import 'dart:developer';

import 'package:awallet/bean/enum_charge_type.dart';
import 'package:awallet/bean/tips.dart';
import 'package:awallet/cards/card_recharge.dart';
import 'package:awallet/cards/send.dart';
import 'package:awallet/component/common.dart';
import 'package:awallet/grpc_services/card_service.dart';
import 'package:awallet/grpc_services/common_service.dart';
import 'package:awallet/grpc_services/user_service.dart';
import 'package:awallet/src/generated/user/card.pbgrpc.dart';
import 'package:awallet/src/generated/user/user.pbgrpc.dart';
import 'package:awallet/tools/global_params.dart';
import 'package:awallet/tools/string_tool.dart';
import 'package:fixnum/src/int64.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dash/flutter_dash.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

import '../bean/currency_tx_info.dart';
import '../component/bottom_button.dart';
import '../component/currency_tx_item.dart';
import '../component/square_button.dart';
import 'apply_card.dart';
import 'kyc.dart';

class CardPart extends StatefulWidget {
  const CardPart({super.key});

  @override
  State<CardPart> createState() => _CardPartState();
}

class _CardPartState extends State<CardPart> {
  var txs = [];
  bool hasCard = CommonService.cardInfo.cardNo.isNotEmpty;

  final RefreshController _refreshListController =
      RefreshController(initialRefresh: true);

  final RefreshController _refreshBalanceController =
      RefreshController(initialRefresh: true);

  @override
  void initState() {
    super.initState();
    if (CommonService.cardInfo.cardNo.isNotEmpty) {
      hasCard = true;
      onClickType(0);
    }
    getCardBalanceFromServer();
  }

  int currTypeIndex = 0;
  int dataStartIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SmartRefresher(
      controller: _refreshBalanceController,
      onRefresh: _onBalanceRefresh,
      child: Center(
        child: Column(
          children: [
            const SizedBox(height: 20),
            buildCard(context),
            const SizedBox(height: 15),
            hasCard ? buildCardDetail(context) : buildApplyCardPart(),
          ],
        ),
      ),
    );
  }

  Stack buildCard(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Stack(
      alignment: AlignmentDirectional.bottomEnd,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: size.width,
              height: 159,
              decoration: ShapeDecoration(
                color: const Color(0x23C1C1C1),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15, top: 15),
                    child: Container(
                      width: 102,
                      height: 30,
                      alignment: Alignment.center,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                              'asset/images/image_virtual_card_bg.png'),
                        ),
                      ),
                      child: const Text(
                        'Virtual Card',
                        style: TextStyle(
                          color: Color(0xFF666666),
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        const Padding(
          padding: EdgeInsets.only(right: 15),
          child: Image(
              width: 214,
              height: 108,
              image: AssetImage("asset/images/img_visa.png")),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 17, bottom: 80),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  if (CommonService.cardInfo.cardNo.isNotEmpty) {
                    showToast(Tips.cardNoIsOnClipboard.value);
                    Clipboard.setData(
                        ClipboardData(text: CommonService.cardInfo.cardNo));
                  }
                },
                child: Text(
                  getCardNo(),
                  style: const TextStyle(
                    color: Color(0xFF666666),
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    height: 0,
                  ),
                ),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 10, right: 120),
          child: Text(
            getCardExpiryDate(),
            style: const TextStyle(
              color: Color(0xFF333333),
              fontSize: 15,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 10, right: 20),
          child: Text(
            "CVV ${CommonService.cardInfo.cvv}",
            style: const TextStyle(
              color: Color(0xFF333333),
              fontSize: 15,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        Padding(
            padding: const EdgeInsets.only(left: 15, bottom: 30),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  '\$',
                  style: TextStyle(
                    color: Color(0xFF333333),
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(width: 6),
                Text(
                  StringTools.formatCurrencyNum(CommonService.cardInfo.balance),
                  style: const TextStyle(
                    color: Color(0xFF333333),
                    fontSize: 32,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            )),
      ],
    );
  }

  Widget buildApplyCardPart() {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Our new virtual card allows you to：',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color(0xFF333333),
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 0, top: 17),
            child: Text(
              '- Pay conveniently for online transactions\n- Exchange Currencies & Crypto\n- Send & Receive',
              style: TextStyle(
                color: Color(0xFF666666),
                fontSize: 14,
                fontWeight: FontWeight.w400,
                height: 1.82,
              ),
            ),
          ),
          const Spacer(),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            BottomButton(
              icon: 'asset/images/icon_arrow_right_green.png',
              text: 'APPLY CARD',
              onPressed: () {
                onClickApplyCard();
              },
            )
          ]),
          // const SizedBox(height: 75)
          const Spacer(),
        ],
      ),
    );
  }

  Widget buildCardDetail(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 15),
          buildTxButtons(),
          const SizedBox(height: 15),
          Dash(
            dashColor: const Color(0xFFCFCFCF),
            length: MediaQuery.of(context).size.width - 40,
          ),
          const SizedBox(height: 15),
          const Text(
            'Recent Transactions',
            style: TextStyle(
              color: Color(0xFF999999),
              fontSize: 15,
              fontWeight: FontWeight.w400,
            ),
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              InkWell(
                  onTap: () {
                    onClickType(0);
                  },
                  child: Text("Offline",
                      style: TextStyle(
                          color: currTypeIndex == 0
                              ? Colors.lightBlueAccent
                              : Colors.black))),
              InkWell(
                  onTap: () {
                    onClickType(1);
                  },
                  child: Text("Online",
                      style: TextStyle(
                          color: currTypeIndex == 1
                              ? Colors.lightBlueAccent
                              : Colors.black)))
            ],
          ),
          const SizedBox(height: 10),
          Expanded(
            child: SmartRefresher(
              controller: _refreshListController,
              enablePullDown: true,
              enablePullUp: true,
              header: const WaterDropHeader(),
              footer: CustomFooter(
                builder: (BuildContext context, LoadStatus? mode) {
                  Widget body;
                  if (mode == LoadStatus.idle) {
                    body = const Text("pull up load");
                  } else if (mode == LoadStatus.loading) {
                    body = const CupertinoActivityIndicator();
                  } else if (mode == LoadStatus.failed) {
                    body = const Text("Load Failed!Click retry!");
                  } else if (mode == LoadStatus.canLoading) {
                    body = const Text("release to load more");
                  } else {
                    body = const Text("No more Data");
                  }
                  return SizedBox(
                    height: 55.0,
                    child: Center(child: body),
                  );
                },
              ),
              onRefresh: _onListRefresh,
              onLoading: _onListLoading,
              child: txs.isEmpty
                  ? const Center(child: Text("No Data"))
                  : ListView.builder(
                      padding: const EdgeInsets.only(top: 20),
                      itemCount: txs.length,
                      itemBuilder: (BuildContext context, int index) {
                        if (index < txs.length) {
                          return CurrencyTxItem(txInfo: txs[index]);
                        }
                        return null;
                      }),
            ),
          ),
        ],
      ),
    );
  }

  void _onBalanceRefresh() async {
    CardService.getInstance().cardInfo(context).then((resp) {
      if (resp.code == 1) {
        setState(() {});
      }
      _refreshBalanceController.refreshCompleted();
    });
  }

  void _onListRefresh() async {
    txs = [];
    dataStartIndex = 0;
    if (currTypeIndex == 0) {
      getOfflineCardHistoryListFromServer();
    } else {
      getOnlineCardExchangeInfoList();
    }
  }

  Row buildTxButtons() {
    var size = MediaQuery.sizeOf(context);
    var iconWidth = (size.width - 40) / 3;
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SquareButton(
            icon: 'asset/images/icon_pay.png',
            iconWidth: iconWidth,
            text: 'Pay',
            onPressed: () {
              showToast(Tips.comeSoon.value);
            }),
        SquareButton(
            icon: 'asset/images/icon_top_up.png',
            text: 'Deposit',
            iconWidth: iconWidth,
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (context) {
                    return Send(type: EnumChargeType.deposit);
                  });
            }),
        SquareButton(
            icon: 'asset/images/icon_send.png',
            text: 'Withdraw',
            iconWidth: iconWidth,
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (context) {
                    return CardRecharge(amt: '', type: EnumChargeType.withdraw);
                  });
            }),
      ],
    );
  }

  String getCardExpiryDate() {
    String expiryDate = CommonService.cardInfo.expiryDate;
    if (expiryDate.isEmpty) {
      expiryDate = "****";
    }
    return "Exp. ${expiryDate.substring(2, 4)}/${expiryDate.substring(0, 2)}";
  }

  String getCardNo() {
    String cardNo = CommonService.cardInfo.cardNo;
    if (cardNo.isEmpty) {
      cardNo = "****************";
    }
    return "${cardNo.substring(0, 4)} ${cardNo.substring(4, 8)} ${cardNo.substring(8, 12)} ${cardNo.substring(12)}";
  }

  void _onListLoading() async {
    dataStartIndex += pageSize;
    if (currTypeIndex == 0) {
      getOfflineCardHistoryListFromServer();
    } else {
      getOnlineCardExchangeInfoList();
    }
  }

  onClickApplyCard() {
    if (CommonService.userInfo!.kycStatus == "passed") {
      applyCardFromServer();
    } else {
      UserService.getInstance().getUserInfo(context).then((resp) {
        if (resp.code == 1 && resp.data != null) {
          CommonService.userInfo = (resp.data as GetUserInfoResponse).user;
          if (CommonService.userInfo!.kycStatus == "") {
            showDialog(
                context: context,
                builder: (context) {
                  return const Kyc();
                });
          }

          if (CommonService.userInfo!.kycStatus == "pending") {
            showToast(Tips.checkKycResult.value);
          }

          if (CommonService.userInfo!.kycStatus == "passed") {
            applyCardFromServer();
          }
        }
      });
    }
  }

  applyCardFromServer() async {
    var flag = await showDialog(
        context: context,
        builder: (context) {
          return const ApplyCard();
        });
    if (flag != null && flag == true) {
      setState(() {});
    }
  }

  onClickType(int type) {
    if (currTypeIndex == type) {
      return;
    }

    if (_refreshListController.isRefresh) {
      return;
    }

    currTypeIndex = type;
    dataStartIndex = 1;
    _onListRefresh();
    setState(() {});
  }

  getCardBalanceFromServer() {
    CardService.getInstance().cardInfo(context).then((resp) {
      if (resp.code == 1) {
        hasCard = true;
        if (mounted) {
          onClickType(0);
        }
      }
      if (mounted) {
        setState(() {});
      }
    });
  }

  getOnlineCardExchangeInfoList() {
    log("getOnlineCardExchangeInfoList");
    CardService.getInstance()
        .cardExchangeInfoList(
            context,
            CommonService.cardInfo.cardNo,
            Int64.parseInt(dataStartIndex.toString()),
            Int64.parseInt(pageSize.toString()))
        .then((resp) {
      if (resp.code == 1) {
        var items = (resp.data as CardExchangeInfoListResponse).items;
        if (items.isNotEmpty) {
          for (var element in items) {
            txs.add(CurrencyTxInfo(
                name: element.counterParty,
                currencyName: "USD",
                amount: element.amt.abs(),
                status: element.status.value,
                amountOfDollar: element.amt.abs()));
          }
          if (mounted) {
            setState(() {});
          }
        }
      }
      if (_refreshListController.isRefresh) {
        _refreshListController.refreshCompleted();
      }
      if (_refreshListController.isLoading) {
        _refreshListController.loadComplete();
      }
    });
  }

  getOfflineCardHistoryListFromServer() {
    CardService.getInstance()
        .cardHistory(context, CommonService.cardInfo.cardNo,
            Int64.parseInt(dataStartIndex.toString()), Int64.parseInt(pageSize.toString()))
        .then((resp) {
      if (resp.code == 1) {
        var items = (resp.data as CardHistoryResponse).items;
        log("$items");
        if (items.isNotEmpty) {
          for (var element in items) {
            txs.add(CurrencyTxInfo(
                name: element.authMerchant,
                currencyName: element.settleCurrency,
                amount: double.parse(element.settleAmt),
                amountOfDollar: 0));
          }
          if (mounted) {
            setState(() {});
          }
        }
      }
      if (_refreshListController.isRefresh) {
        _refreshListController.refreshCompleted();
      }
      if (_refreshListController.isLoading) {
        _refreshListController.loadComplete();
      }
    });
  }
}
