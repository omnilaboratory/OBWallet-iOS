import 'dart:convert';
import 'dart:io';
import 'package:crypto/crypto.dart';
import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as path;
import 'package:shared_preferences/shared_preferences.dart';

// Data of downloading state
bool isDownloading = false;
bool isDownloaded  = false;
String dlProgress  = '';
int downloadSize   = 0;
int fileOriginSize = 0;

class Utils {

  static Future<String> getDownloadPath() async {
    Directory? appDir;

    if (Platform.isAndroid) {
      appDir = await getExternalStorageDirectory();
    } else if (Platform.isIOS) {
      appDir = await getApplicationDocumentsDirectory();
    }

    if (appDir != null) {
      String downloadPath = '${appDir.path}/Download';
      Directory(downloadPath).createSync(recursive: true);
      return downloadPath;
    } else {
      throw Exception('Failed to get download path');
    }
  }

  static Future<void> downloadFile(String url, String savePath) async {

    final dio = Dio();
    File localFile = File(savePath);

    Response response = await dio.head(url);
    fileOriginSize = int.parse(response.headers.value('content-length')!);

    // Resume downloading
    if (await localFile.exists()) {
      String dir       = path.dirname(savePath);
      String basename  = path.basenameWithoutExtension(savePath);
      String extension = path.extension(savePath);

      String localRouteToSaveFileStr = savePath;
      List<int> sizes = [];
      Options? options;

      int fileLocalSize = localFile.lengthSync();

      // File has been downloaded.
      if (fileLocalSize == fileOriginSize) {
        // print('File has been downloaded.');
        isDownloaded = true;
        return;
      }

      sizes.add(fileLocalSize);

      int i = 1;
      localRouteToSaveFileStr = '$dir/$basename' '_$i$extension';
      File f = File(localRouteToSaveFileStr);
      while (f.existsSync()) {
        sizes.add(f.lengthSync());
        i++;
        localRouteToSaveFileStr = '$dir/$basename' '_$i$extension';
        f = File(localRouteToSaveFileStr);
      }

      int sumSizes = sizes.fold(0, (p, c) => p + c);
      if (sumSizes < fileOriginSize) {
        options = Options(
          headers: {'Range': 'bytes=$sumSizes-'},
        );
      }

      await dio.download(
        url, 
        localRouteToSaveFileStr, 
        options: options,
        onReceiveProgress: (received, total) {
          if (total != -1) {
            isDownloading = true;
            downloadSize  = received + sumSizes;
            dlProgress    = (downloadSize / fileOriginSize * 100).toStringAsFixed(0);
            // print('RESUME --> ($dlProgress%) Downloaded $downloadSize out of $fileOriginSize bytes');
          }
        }
      );

      var raf = await localFile.open(mode: FileMode.writeOnlyAppend);

      i = 1;
      String filePartLocalRouteStr = '$dir/$basename' '_$i$extension';
      f = File(filePartLocalRouteStr);

      while (f.existsSync()) {
        raf = await raf.writeFrom(await f.readAsBytes());
        await f.delete();

        i++;
        filePartLocalRouteStr = '$dir/$basename' '_$i$extension';
        f = File(filePartLocalRouteStr);
      }

      await raf.close();
    } 
    
    // New downloading
    else {
      await dio.download(url, savePath, onReceiveProgress: (received, total) {
        if (total != -1) {
          isDownloading = true;
          downloadSize  = received;
          dlProgress    = (received / total * 100).toStringAsFixed(0);
          // print('NEW --> ($dlProgress%) Downloaded $received out of $total bytes');
        }
      });
    }

    log('Download complete');
    isDownloaded = true;
  }

  static bool isEmailValid(String email) {
    // ...
    return true;
  }

  static String generateMd5(String input) {
    return md5.convert(utf8.encode(input)).toString();
  }
  
  static Future<bool> saveToStorage(String key, String value) async {
    try {
      // const storage = FlutterSecureStorage();
      // await storage.write(key: key, value: value);

      final SharedPreferences prefs = await SharedPreferences.getInstance();
      final res = await prefs.setString(key, value);
      return res;
    } catch (e) {
      log('saveToStorage -> error: $e');
      return false;
    }
  }

  static Future<String?> readFromStorage(String key) async {
    try {
      // const storage = FlutterSecureStorage();
      // String? value = await storage.read(key: key);

      final SharedPreferences prefs = await SharedPreferences.getInstance();
      final String? value = prefs.getString(key);
      return value;
    } catch (e) {
      log('readFromStorage -> error: $e');
      return '';
    }
  }
}
