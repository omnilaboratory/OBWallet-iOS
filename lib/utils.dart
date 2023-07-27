import 'dart:io';
import 'package:dio/dio.dart';
import 'package:path_provider/path_provider.dart';

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
    final file = File(savePath);

    if (await file.exists()) {
      // Get the size that the file has been downloaded.
      final downloadedSize = await file.length();
      print(downloadedSize);
      final headers = {'range': 'bytes=$downloadedSize-'};

      await dio.download(url, savePath, options: Options(headers: headers),
          onReceiveProgress: (received, total) {
        if (total != -1) {
          final progress = (received / total * 100).toStringAsFixed(2);
          print('RESUME --> ($progress%) Downloaded $received out of $total bytes');
        }
      });
    } else {
      await dio.download(url, savePath, onReceiveProgress: (received, total) {
        if (total != -1) {
          final progress = (received / total * 100).toStringAsFixed(2);
          print('NEW --> ($progress%) Downloaded $received out of $total bytes');
        }
      });
    }

    print('Download complete');
  }

  static bool isEmailValid(String email) {
    // ...
    return true;
  }
}
