import 'package:awallet/bean/global_state.dart';
import 'package:awallet/bean/token_info.dart';
import 'package:awallet/component/crypto_wallet_card.dart';
import 'package:awallet/cryptos/more_menu.dart';
import 'package:awallet/cryptos/receive_wallet_address.dart';
import 'package:awallet/cryptos/token_activity.dart';
import 'package:awallet/cryptos/tx_history.dart';
import 'package:flutter/material.dart';

import '../component/square_button.dart';
import 'create_btc_wallet.dart';

class CryptoHome extends StatefulWidget {
  const CryptoHome({super.key});

  @override
  State<CryptoHome> createState() => _CryptoHomeState();
}

class _CryptoHomeState extends State<CryptoHome> {
  @override
  void initState() {
    super.initState();
    print("initState");

    if (GlobalState.isExistBtcAddress == false) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        showDialog(
            context: context,
            builder: (context) {
              return const CryptoCreateBtcWallet();
            });
      });
    }
  }

  @override
  void didChangeDependencies() {
    print("didChangeDependencies");
    super.didChangeDependencies();
  }

  @override
  void didUpdateWidget(covariant CryptoHome oldWidget) {
    print("didUpdateWidget");
    super.didUpdateWidget(oldWidget);
  }

  @override
  void dispose() {
    print("dispose");
    // TODO: implement dispose
    super.dispose();
  }

  var tokenList = [
    const TokenInfo(
        name: "BTC",
        iconUrl: 'asset/images/icon_bitcoin.png',
        balance: 100000.0,
        balanceOfDollar: 1220222222000.0),
    const TokenInfo(name: "USDT", iconUrl: 'asset/images/icon_tether.png'),
  ];

  @override
  Widget build(BuildContext context) {
    print("build");
    return buildHomeScaffold();
  }

  Scaffold buildHomeScaffold() {
    return Scaffold(
      appBar: buildAppBar(),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, bottom: 10),
              child: buildChainButtons(),
            ),
            const CryptoWalletCard(
                balance: 0.3, address: "0x0f6eD175150e0......ad19A6e054CB"),
            const SizedBox(height: 20),
            buildTxButtons(),
            Expanded(
              child: ListView.builder(
                itemBuilder: tokenItem,
                shrinkWrap: true,
                padding: const EdgeInsets.all(20.0),
                itemCount: tokenList.length,
              ),
            )
          ],
        ),
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Colors.transparent,
      automaticallyImplyLeading: false,
      title: const Row(
        children: [
          Image(image: AssetImage("asset/images/logo_head.png")),
          Text('Crypto',
              style: TextStyle(
                color: Color(0xFF333333),
                fontSize: 24,
                fontWeight: FontWeight.w600,
              )),
        ],
      ),
      actions: <Widget>[
        Padding(
          padding: const EdgeInsets.only(right: 20.0),
          child: Row(
            children: [
              ButtonForAppBarAction(
                  imageUrl: "asset/images/icon_fresh.png", onTap: () {}),
              ButtonForAppBarAction(
                  imageUrl: "asset/images/icon_tx_history.png",
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const TxHistory()));
                  }),
              ButtonForAppBarAction(
                  imageUrl: "asset/images/icon_more_3pot.png",
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return const MoreMenu();
                        });
                  }),
            ],
          ),
        ),
      ],
    );
  }

  Widget tokenItem(BuildContext context, int index) {
    var tokenInfo = tokenList[index];
    return Container(
        margin: const EdgeInsets.only(bottom: 20),
        padding: const EdgeInsets.only(left: 20, right: 20),
        height: 68,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: const [
            BoxShadow(
              color: Color(0x3F000000),
              blurRadius: 4,
              offset: Offset(1, 1),
            ),
          ],
        ),
        child: InkWell(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => TokenActivity(tokenInfo: tokenInfo)));
          },
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 16),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image(
                      image: AssetImage(tokenInfo.iconUrl),
                      width: 20,
                      height: 20,
                    ),
                    const SizedBox(width: 5),
                    Text(
                      tokenInfo.name,
                      style: const TextStyle(
                        color: Color(0xFF666666),
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
              const Spacer(),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(tokenInfo.balance.toString(),
                      textAlign: TextAlign.right,
                      style: const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold)),
                  Text("\$ ${tokenInfo.balanceOfDollar}",
                      textAlign: TextAlign.right),
                ],
              )
            ],
          ),
        ));
  }

  Row buildTxButtons() {
    var size = MediaQuery.sizeOf(context);
    var iconWidth = (size.width - 50) / 5;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        SquareButton(
            icon: 'asset/images/icon_pay.png',
            iconWidth: iconWidth,
            text: 'Pay',
            onPressed: () {}),
        SquareButton(
            icon: 'asset/images/icon_exchange.png',
            text: 'Exchange',
            iconWidth: iconWidth,
            onPressed: () {}),
        SquareButton(
            icon: 'asset/images/icon_receive.png',
            text: 'Receive',
            iconWidth: iconWidth,
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (context) {
                    return const ReceiveWalletAddress();
                  });
            }),
        SquareButton(
            icon: 'asset/images/icon_send.png',
            text: 'Send',
            iconWidth: iconWidth,
            onPressed: () {}),
      ],
    );
  }

  var chainBgClrs = <Color>[Colors.white, Colors.transparent];
  var chainFgClrs = [const Color(0xFF4A92FF), const Color(0xFF999999)];
  var currChainBtnIndex = 0;

  Widget buildChainButtons() {
    return Container(
      height: 45,
      padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
      decoration: BoxDecoration(
        color: const Color(0xFFF6F6F6),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Expanded(
            child: TextButton(
              style: TextButton.styleFrom(
                foregroundColor: chainFgClrs[currChainBtnIndex == 0 ? 0 : 1],
                backgroundColor: chainBgClrs[currChainBtnIndex == 0 ? 0 : 1],
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4),
                ),
              ),
              child: const Text("Bitcoin"),
              onPressed: () {
                if (currChainBtnIndex != 0) {
                  currChainBtnIndex = 0;
                  setState(() {});
                }
              },
            ),
          ),
          const SizedBox(width: 20),
          Expanded(
            child: TextButton(
              style: TextButton.styleFrom(
                foregroundColor: chainFgClrs[currChainBtnIndex == 1 ? 0 : 1],
                backgroundColor: chainBgClrs[currChainBtnIndex == 1 ? 0 : 1],
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4),
                ),
              ),
              child: const Text("Ethereum"),
              onPressed: () {
                if (currChainBtnIndex != 1) {
                  currChainBtnIndex = 1;
                  setState(() {});
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}

class ButtonForAppBarAction extends StatelessWidget {
  final String imageUrl;
  final GestureTapCallback onTap;

  const ButtonForAppBarAction({
    super.key,
    required this.imageUrl,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
          onTap: onTap,
          child: Image(width: 24, height: 24, image: AssetImage(imageUrl))),
    );
  }
}
