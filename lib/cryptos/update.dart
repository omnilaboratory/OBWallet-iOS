import 'dart:async';
import 'package:awallet/utils.dart';
import 'package:awallet/component/bottom_white_button.dart';
import 'package:flutter/material.dart';

class Update extends StatefulWidget {
  const Update({super.key});

  @override
  State<Update> createState() => _UpdateState();
}

class _UpdateState extends State<Update> {
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

    const url =
        'https://cache.oblnd.top/neutrino-testnet/2023-07-27neutrino.db';
    final savePath = '$path/neutrino.db';

    Utils.downloadFile(url, savePath);
  }

  onClose() {
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color.fromRGBO(18, 58, 80, 0.8),
      body: Center(
        child: Column(children: [
          const SizedBox(height: 80),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20.0),
            ),
            width: size.width * 0.8,
            height: size.height * 0.65,
            child: Column(
              children: [
                const SizedBox(height: 30),
                const Text(
                  'Updating',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 4,
                  ),
                ),
                const SizedBox(height: 115),
                Stack(
                  alignment: Alignment.center,
                  children: [
                    SizedBox(
                        width: 124,
                        height: 124,
                        child: CircularProgressIndicator(
                          strokeWidth: 10,
                          value: dlProgress != ''
                              ? double.parse(dlProgress) / 100
                              : 0,
                          color: const Color(0xFFEBBE7A),
                          backgroundColor: const Color(0x4CEC9A1E),
                        )),
                    Text.rich(
                      TextSpan(
                        children: [
                          const TextSpan(
                            text: ' ',
                            style: TextStyle(
                              color: Color(0xFF333333),
                              fontSize: 16,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          TextSpan(
                            text: '$dlProgress',
                            style: const TextStyle(
                              color: Color(0xFF333333),
                              fontSize: 32,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          const TextSpan(
                            text: ' ',
                            style: TextStyle(
                              color: Color(0xFF333333),
                              fontSize: 26,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          const TextSpan(
                            text: '%',
                            style: TextStyle(
                              color: Color(0xFF333333),
                              fontSize: 16,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 10),
                const Text(
                  '1/3 Downloading-file-1',
                  style: TextStyle(
                    color: Color(0xFF333333),
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(height: 50),
                const Padding(
                    padding: EdgeInsets.only(left: 30, right: 30),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image(
                            width: 30,
                            height: 30,
                            image: AssetImage("asset/images/icon_smile.png")),
                        SizedBox(width: 7),
                        Expanded(
                          child: Text(
                            'You will get latest data until the update finished, please wait for about 2 minutes.',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              color: Color(0xFF999999),
                              fontSize: 13,
                              fontWeight: FontWeight.w500,
                              height: 1.47,
                            ),
                          ),
                        )
                      ],
                    ))
              ],
            ),
          ),
          const SizedBox(height: 30),
          BottomWhiteButton(
            icon: 'asset/images/icon_close_white.png',
            text: 'CANCEL',
            onPressed: onClose,
          )
        ]),
      ),
    );
  }

  final OutlineInputBorder _outlineInputBorder = OutlineInputBorder(
    borderSide: const BorderSide(width: 0.50, color: Color(0xFFE6E6E6)),
    borderRadius: BorderRadius.circular(8),
  );
}