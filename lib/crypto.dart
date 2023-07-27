import 'package:awallet/utils.dart';
import 'package:flutter/material.dart';

class CryptoPage extends StatefulWidget {
  const CryptoPage({super.key});

  @override
  State<CryptoPage> createState() => _CryptoPageState();
}

class _CryptoPageState extends State<CryptoPage> {
  @override
  void initState() {
    super.initState();

    // WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
    //   final path = await Utils.getDownloadPath();
    //   print('Get Path --> $path');
    // });
    myAsyncMethod();
  }

  void myAsyncMethod() async {
    final path = await Utils.getDownloadPath();
    // print('Get Path --> $path');

    const url      = 'https://cache.oblnd.top/neutrino-testnet/2023-07-20neutrino.db';
    final savePath = '$path/neutrino.db';

    await Utils.downloadFile(url, savePath);
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text('Crypto Page!')),
    );
  }
}
