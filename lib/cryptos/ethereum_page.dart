import 'package:awallet/bean/token_info.dart';
import 'package:awallet/cards/exchange.dart';
import 'package:awallet/component/crypto_receive.dart';
import 'package:awallet/component/crypto_token_item.dart';
import 'package:awallet/component/crypto_wallet_card.dart';
import 'package:awallet/component/square_button.dart';
import 'package:awallet/cryptos/receive_wallet_address.dart';
import 'package:awallet/cryptos/send.dart';
import 'package:awallet/services/eth_service.dart';
import 'package:flutter/material.dart';

class EthereumPage extends StatefulWidget {
  const EthereumPage({super.key});

  @override
  State<EthereumPage> createState() => _EthereumPageState();
}

class _EthereumPageState extends State<EthereumPage> {
  var tokenList = [];

  late List<Widget> columnChildren;

  @override
  void initState() {
    if (EthService.walletInfo == null) {
      EthService.getEthWalletInfo().then((value) {
        EthService.walletInfo = value;
        tokenList = [
          TokenInfo(
              name: "ETH",
              iconUrl: 'asset/images/icon_eth_logo.png',
              balance: value.balance),
          const TokenInfo(
              name: "USDT", iconUrl: 'asset/images/icon_tether.png'),
        ];
        setState(() {});
      });
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    if (EthService.walletInfo == null) {
      return const Center(
        child: Text("loading"),
      );
    }

    columnChildren = [];
    columnChildren.add(CryptoWalletCard(walletInfo: EthService.walletInfo!));
    columnChildren.add(const SizedBox(height: 20));

    if (EthService.walletInfo?.balance == 0) {
      columnChildren.add(CryptoReceive(
        address: EthService.walletInfo!.address,
        tips: "The balance is zero, please top up Ethereum Assets",
        qrSize: 200,
      ));
    } else {
      columnChildren.add(buildTxButtons());
      columnChildren.add(Expanded(
        child: ListView.builder(
          itemBuilder: (BuildContext context, int index) {
            return CryptoTokenItem(tokenInfo: tokenList[index]);
          },
          shrinkWrap: true,
          padding:
              const EdgeInsets.only(left: 10, top: 20, right: 10, bottom: 20),
          itemCount: tokenList.length,
        ),
      ));
    }

    return Center(
      child: Column(
        children: columnChildren,
      ),
    );
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
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (context) {
                    return const Exchange();
                  });
            }),
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
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (context) {
                    return const Send();
                  });
            }),
      ],
    );
  }
}
