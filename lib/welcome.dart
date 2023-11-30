import 'dart:io';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:permission_handler/permission_handler.dart';
import 'home.dart';
import 'logins/login.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text('Welcome'),
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 160),
            const Text(
              'Welcome to AWallet!',
              style: TextStyle(fontSize: 20),
            ),

            const SizedBox(height: 30),
            SizedBox(
              width: 200,
              height: 45,
              child: ElevatedButton(
                child: const Text('Sign In', style: TextStyle(fontSize: 18)),
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const HomePage(goToPage: 0)),
                  );
                },
              )
            ),

            const SizedBox(height: 50),
            SizedBox(
              width: 200,
              height: 45,
              child: ElevatedButton(
                child: const Text('Sign Up', style: TextStyle(fontSize: 18)),
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const Login()),
                  );
                },
              )
            ),
            const SizedBox(
              height: 50,
            ),
            SizedBox(
                width: 260,
                height: 45,
                child: ElevatedButton(
                  child: const Text('Create New Wallet',
                      style: TextStyle(fontSize: 18, color: Colors.black)),
                  onPressed: () {
                    testPermissionAndMethodChannel();
                    return;
                  },
                )),
            const SizedBox(
              height: 50,
            ),
            SizedBox(
                width: 200,
                height: 45,
                child: ElevatedButton(
                  child: const Text('New Address',
                      style: TextStyle(fontSize: 18, color: Colors.black)),
                  onPressed: () {
                    newAddress();
                    return;
                  },
                )),
          ],
        ),
      ),
    );
  }

  Future<void> newAddress() async {
    var methodChannel = const MethodChannel("samples.flutter.io/battery");
    var temp = await methodChannel.invokeMethod("newAddress");
    if (kDebugMode) {
      print(temp);
    }
  }


  bool storage = true;
  bool videos = true;
  bool photos = true;
  bool audio = true;

  Future<void> testPermissionAndMethodChannel() async {
    if (Platform.isAndroid) {
      DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
      AndroidDeviceInfo androidInfo = await deviceInfo.androidInfo;
      if (androidInfo.version.sdkInt >= 33) {
        videos = await Permission.videos.request().isGranted;
        photos = await Permission.photos.request().isGranted;
        audio = await Permission.audio.request().isGranted;
      } else {
        storage = await Permission.storage.request().isGranted;
      }
    } else if (Platform.isIOS) {
      storage = await Permission.storage.request().isGranted;
      DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
      IosDeviceInfo iosDeviceInfo = await deviceInfo.iosInfo;
      if (int.parse(iosDeviceInfo.systemVersion) > 14) {
        photos = await Permission.photos.request().isGranted;
      }
    }

    if (storage || (videos && photos && audio)) {
      var methodChannel = const MethodChannel("samples.flutter.io/battery");
      var temp = await methodChannel.invokeMethod("start", "I am a boy1");
      if (kDebugMode) {
        print(temp);
      }
    } else {
      if (kDebugMode) {
        print("no Permission");
      }
    }
  }
}
