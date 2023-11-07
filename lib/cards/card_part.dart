import 'dart:developer';

import 'package:awallet/bean/card_item_info.dart';
import 'package:awallet/bean/crypto_tx_info.dart';
import 'package:awallet/bean/enum_charge_type.dart';
import 'package:awallet/bean/enum_kyc_status.dart';
import 'package:awallet/bean/tips.dart';
import 'package:awallet/cards/card_recharge.dart';
import 'package:awallet/cards/send.dart';
import 'package:awallet/component/card_item.dart';
import 'package:awallet/component/common.dart';
import 'package:awallet/component/crypto_tx_item.dart';
import 'package:awallet/grpc_services/card_service.dart';
import 'package:awallet/grpc_services/common_service.dart';
import 'package:awallet/grpc_services/user_service.dart';
import 'package:awallet/src/generated/user/card.pbgrpc.dart';
import 'package:awallet/tools/global_params.dart';
import 'package:fixnum/src/int64.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dash/flutter_dash.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

import '../component/bottom_button.dart';
import '../component/square_button.dart';
import 'kyc.dart';

class CardPart extends StatefulWidget {
  const CardPart({super.key});

  @override
  State<CardPart> createState() => _CardPartState();
}

class _CardPartState extends State<CardPart> {
  var txs = [];
  int currTypeIndex = 0;
  int dataStartIndex = 0;
  bool hasCard = CommonService.userInfo!.cardCount > 0;

  final RefreshController _refreshListController =
      RefreshController(initialRefresh: false);

  final RefreshController _refreshBalanceController =
      RefreshController(initialRefresh: false);

  @override
  void initState() {
    super.initState();
    _onBalanceRefresh();
    _onListRefresh();
  }

  @override
  Widget build(BuildContext context) {
    log("hasCard $hasCard");
    return SmartRefresher(
      controller: _refreshBalanceController,
      onRefresh: _onBalanceRefresh,
      child: Center(
        child: Column(
          children: [
            const SizedBox(height: 20),
            CardItem(
                cardItemInfo: CardItemInfo(
                    cardNo: CommonService.cardInfo.cardNo,
                    balance: CommonService.cardInfo.balance,
                    exp: CommonService.cardInfo.expiryDate,
                    cvv: CommonService.cardInfo.cvv)),
            const SizedBox(height: 15),
            hasCard ? buildCardDetail(context) : buildApplyCardPart(),
          ],
        ),
      ),
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
                  child: Text("Payment",
                      style: TextStyle(
                        fontSize: 16,
                        color: currTypeIndex == 0
                            ? Colors.blue
                            : Colors.grey))),
              InkWell(
                  onTap: () {
                    onClickType(1);
                  },
                  child: Text("Account",
                      style: TextStyle(
                        fontSize: 16,
                        color: currTypeIndex == 1
                            ? Colors.blue
                            : Colors.grey))),
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
                    body = const Text("No more Data");
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
                          return CryptoTxItem(txInfo: txs[index]);
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
      log("cardInfo ${CommonService.cardInfo}");
      if (resp.code == 1) {
        hasCard = CommonService.cardInfo.cardNo.isNotEmpty;
        if (mounted) {
          setState(() {});
        }
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
            icon: 'asset/images/icon_deposit.png',
            text: 'Deposit',
            iconWidth: iconWidth,
            onPressed: () async {
              var flag = await showDialog(
                  context: context,
                  builder: (context) {
                    return Send(
                        type: EnumChargeType.deposit,
                        cardNo: CommonService.cardInfo.cardNo);
                  });

              if (flag != null && flag) {
                _onBalanceRefresh();
              }
            }),
        SquareButton(
            icon: 'asset/images/icon_withdraw.png',
            text: 'Withdraw',
            iconWidth: iconWidth,
            onPressed: () async {
              var flag = await showDialog(
                  context: context,
                  builder: (context) {
                    return CardRecharge(
                        amt: '',
                        type: EnumChargeType.withdraw,
                        cardNo: CommonService.cardInfo.cardNo,
                        date: formatCardExpiryDate(),
                        cvc: CommonService.cardInfo.cvv);
                  });

              if (flag != null && flag) {
                _onBalanceRefresh();
              }
            }),
      ],
    );
  }

  String formatCardExpiryDate() {
    String expiryDate = CommonService.cardInfo.expiryDate;
    if (expiryDate.isEmpty) {
      expiryDate = "****";
    }
    return "${expiryDate.substring(2, 4)}/${expiryDate.substring(0, 2)}";
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
    if (CommonService.userInfo!.kycStatus == EnumKycStatus.none.value) {
      UserService.getInstance().getUserInfo(context).then((resp) async {
        if (resp.code == 1 && resp.data != null) {
          if (CommonService.userInfo!.kycStatus == EnumKycStatus.none.value) {
            var flag = await showDialog(
                context: context,
                builder: (context) {
                  return const Kyc();
                });
            if (flag != null && flag) {
              _onBalanceRefresh();
              if (mounted) {
                setState(() {});
              }
            }
          } else {
            showKycTips(context);
          }
        }
      });
    } else {
      showKycTips(context);
    }
  }

  onClickType(int type) {
    if (currTypeIndex == type) {
      return;
    }
    if (_refreshListController.isRefresh || _refreshListController.isLoading) {
      return;
    }

    currTypeIndex = type;
    dataStartIndex = 1;
    _onListRefresh();
    setState(() {});
  }

  getOnlineCardExchangeInfoList() {
    if (CommonService.cardInfo.cardNo.isEmpty) {
      return;
    }
    CardService.getInstance()
        .cardExchangeInfoList(
            context,
            CommonService.cardInfo.cardNo,
            Int64.parseInt(dataStartIndex.toString()),
            Int64.parseInt(pageSize.toString()))
        .then((resp) {
      if (resp.code == 1) {
        var items = (resp.data as CardExchangeInfoListResponse).items;
        log("$items");
        if (items.isNotEmpty) {
          for (var element in items) {
            int status = element.status.value;
            if (status == 1) {
              status = 3;
            }
            txs.add(CryptoTxInfo(
                title: element.counterParty,
                txTime: DateTime.fromMillisecondsSinceEpoch(
                    (element.createdAt * 1000).toInt()),
                fromSymbol: "USD",
                targetSymbol: "",
                amount: element.amt.abs(),
                amountOfDollar: null,
                status: status));
          }
          if (mounted) {
            setState(() {});
          }
        } else {
          dataStartIndex -= pageSize;
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
    if (CommonService.cardInfo.cardNo.isEmpty) {
      return;
    }
    CardService.getInstance()
        .cardHistory(
            context,
            CommonService.cardInfo.cardNo,
            Int64.parseInt(dataStartIndex.toString()),
            Int64.parseInt(pageSize.toString()))
        .then((resp) {
      if (resp.code == 1) {
        var items = (resp.data as CardHistoryResponse).items;
        log("$items");
        if (items.isNotEmpty) {
          for (var element in items) {
            txs.add(CryptoTxInfo(
                title: element.authMerchant,
                txTime: DateTime.now(),
                fromSymbol: "USD",
                targetSymbol: "",
                amount: double.parse(element.settleAmt),
                amountOfDollar: double.parse(element.settleAmt),
                status: 3));
          }
          if (mounted) {
            setState(() {});
          }
        } else {
          dataStartIndex -= pageSize;
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
