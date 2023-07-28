import 'dart:async';
import 'package:awallet/utils.dart';
import 'package:flutter/material.dart';

class CryptoPage extends StatefulWidget {
  const CryptoPage({super.key});

  @override
  State<CryptoPage> createState() => _CryptoPageState();
}

class _CryptoPageState extends State<CryptoPage> {

  late Timer _timer;
  String _progress = '';

  @override
  void initState() {
    super.initState();

    print('isDownloading --> $isDownloading');
    if (!isDownloading) {
      testDownloadFile();
    }

    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      print('dlProgress --> $dlProgress%');

      if (isDownloaded) {
        setState(() {
          _progress = 'Done';
        });
      } else {
        setState(() {
          _progress = dlProgress;
        });
      }
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  void testDownloadFile() async {
    final path = await Utils.getDownloadPath();
    // print('Get Path --> $path');

    const url = 'https://cache.oblnd.top/neutrino-testnet/2023-07-27neutrino.db';
    final savePath = '$path/neutrino.db';

    Utils.downloadFile(url, savePath);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 160),
            Text(
              'Downloaded: $_progress%',
              style: const TextStyle(fontSize: 20),
            ),
          ]
        )
      )
    );
  }
}
