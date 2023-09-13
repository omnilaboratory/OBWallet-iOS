import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:awallet/src/generated/user/country.pbenum.dart';
import 'package:crypto/crypto.dart';
import 'package:dio/dio.dart';
import 'package:path/path.dart' as path;
import 'package:path_provider/path_provider.dart';

// Data of downloading state
bool isDownloading = false;
bool isDownloaded = false;
String dlProgress = '';
int downloadSize = 0;
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
      String dir = path.dirname(savePath);
      String basename = path.basenameWithoutExtension(savePath);
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

      await dio.download(url, localRouteToSaveFileStr, options: options,
          onReceiveProgress: (received, total) {
        if (total != -1) {
          isDownloading = true;
          downloadSize = received + sumSizes;
          dlProgress = (downloadSize / fileOriginSize * 100).toStringAsFixed(0);
          // print('RESUME --> ($dlProgress%) Downloaded $downloadSize out of $fileOriginSize bytes');
        }
      });

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
          downloadSize = received;
          dlProgress = (received / total * 100).toStringAsFixed(0);
          // print('NEW --> ($dlProgress%) Downloaded $received out of $total bytes');
        }
      });
    }

    log('Download complete');
    isDownloaded = true;
  }

  static bool isEmailValid(String email) {
    RegExp reg = RegExp(
        r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?)*$");
    return reg.hasMatch(email);
  }

  static String generateMd5(String input) {
    return md5.convert(utf8.encode(input)).toString();
  }

  static bool isLoginPassword(String input) {
    RegExp reg = RegExp(r".{6,16}$");
    return reg.hasMatch(input);
  }

  // [a-zA-Z0-9_\-.] // allowed characters: letters, numbers, underscore, dot, dash
  static bool isNickname(String input) {
    RegExp reg = RegExp(r"^[a-zA-Z0-9_\-.]{4,20}$");
    return reg.hasMatch(input);
  }

  static bool isNumericOrAlphabet(String input) {
    RegExp reg = RegExp(r'^[a-zA-Z0-9]+$');
    return reg.hasMatch(input);
  }

  static int getStrength(String password) {
    int strength = 0;
    if (password.length >= 6) {
      final RegExp digitRegex = RegExp(r"[0-9]");
      final RegExp lowerRegex = RegExp(r"[a-z]");
      final RegExp upperRegex = RegExp(r"[A-Z]");
      final RegExp symbolRegex = RegExp(r"[!@#$%^&*]");

      strength += digitRegex.hasMatch(password) ? 1 : 0;
      strength += lowerRegex.hasMatch(password) ? 1 : 0;
      strength += upperRegex.hasMatch(password) ? 1 : 0;
      strength += symbolRegex.hasMatch(password) ? 1 : 0;
    }
    return strength;
  }

  static CountryCode getCountryCodeByCode(String code) {
    for (var value in CountryCode.values) {
      if (value.name.toLowerCase() == code.toLowerCase()) {
        return value;
      }
    }
    return CountryCode.AD;
  }
}
