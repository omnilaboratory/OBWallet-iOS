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

  @override
  void initState() {
    super.initState();

    // print('isDownloading --> $isDownloading');
    if (!isDownloading) {
      testDownloadFile();
    }

    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      // print('dlProgress --> $dlProgress%');
      if (isDownloaded) {
        setState(() {
          dlProgress = '100';
        });
      } else {
        setState(() {
          dlProgress;
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
            const SizedBox(height: 150),

            Stack(
              alignment: Alignment.center,
              children: [
                SizedBox(
                  width: 150,
                  height: 150,
                  child: CircularProgressIndicator(
                    strokeWidth: 6,
                    value: dlProgress != '' ? double.parse(dlProgress) / 100 : 0, 
                    color: const Color.fromARGB(255, 0, 145, 250),
                    backgroundColor: const Color.fromARGB(255, 238, 238, 238),
                  )
                ),

                Text(
                  '$dlProgress%',
                  style: const TextStyle(fontSize: 22),
                ),

              ],
            ),

            const SizedBox(height: 50),
            const Text(
              '1/3 neutrino.db',
              style: TextStyle(fontSize: 25),
            ),

            const SizedBox(height: 30),
            const Padding(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Text(
                'You will get a crypto account until download finished, please wait for about 10 minutes.',
                style: TextStyle(fontSize: 16, color: Colors.grey),
                textAlign: TextAlign.center,
              ),
            )
          ]
        )
      )
    );
  }
}
