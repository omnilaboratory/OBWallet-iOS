import 'dart:developer';

import 'package:awallet/bean/card_item_info.dart';
import 'package:awallet/bean/crypto_tx_info.dart';
import 'package:awallet/bean/enum_charge_type.dart';
import 'package:awallet/bean/enum_kyc_status.dart';
import 'package:awallet/cards/physical_card_bind.dart';
import 'package:awallet/cards/real_card_step1.dart';
import 'package:awallet/cards/send.dart';
import 'package:awallet/component/bottom_button.dart';
import 'package:awallet/component/card_item.dart';
import 'package:awallet/component/common.dart';
import 'package:awallet/component/crypto_tx_item.dart';
import 'package:awallet/component/square_button.dart';
import 'package:awallet/generated/l10n.dart';
import 'package:awallet/grpc_services/account_service.dart';
import 'package:awallet/grpc_services/card_service.dart';
import 'package:awallet/grpc_services/common_service.dart';
import 'package:awallet/protos/gen-dart/user/account.pbgrpc.dart';
import 'package:awallet/protos/gen-dart/user/card.pbgrpc.dart';
import 'package:awallet/tools/global_params.dart';
import 'package:fixnum/src/int64.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dash/flutter_dash.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

import 'kyc.dart';

class CardPhysicalPart extends StatefulWidget {
  const CardPhysicalPart({super.key});

  @override
  State<CardPhysicalPart> createState() => _CardPhysicalPartState();
}

class _CardPhysicalPartState extends State<CardPhysicalPart> {
  var txs = [];
  int currTypeIndex = 0;
  int dataStartIndex = 0;
  bool hasCard = CommonService.cardPhysicalInfo.cardNo.isNotEmpty;

  final RefreshController _refreshListController =
      RefreshController(initialRefresh: false);

  final RefreshController _refreshBalanceController =
      RefreshController(initialRefresh: false);

  @override
  void initState() {
    super.initState();
    _onBalanceRefresh();
    _onListRefresh();

    GlobalParams.eventBus.on().listen((event) {
      if (event == "cardBind_Finish") {
        if (mounted) {
          _onBalanceRefresh();
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> list = [];
    list.add(const SizedBox(height: 20));
    list.add(CardItem(
      cardItemInfo: CardItemInfo(
          cardNo: CommonService.cardPhysicalInfo.cardNo,
          balance: CommonService.cardPhysicalInfo.balance,
          exp: CommonService.cardPhysicalInfo.expiryDate,
          cvv: CommonService.cardPhysicalInfo.cvv),
      type: 1,
    ));
    list.add(const SizedBox(height: 15));
    if (hasCard) {
      list.add(buildCardDetail(context));
    } else {
      list.add(buildBindCardPart());
    }

    return SmartRefresher(
      controller: _refreshBalanceController,
      onRefresh: _onBalanceRefresh,
      child: Center(
        child: Column(
          children: list,
        ),
      ),
    );
  }

  InkWell realCardBtn(BuildContext context) {
    return InkWell(
        onTap: () async {
          var resp = await AccountService.getInstance().getAccountInfo(context);
          if (resp.code == 1) {
            var accountInfo = resp.data as AccountInfo;
            if (accountInfo.balance < 50) {
              alert(S.of(context).realCard_fee(50), context, () {});
            } else {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const RealCardStep1()));
            }
          }
        },
        child: Container(
            width: double.infinity,
            height: 40,
            decoration: ShapeDecoration(
              color: Colors.blue,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(6),
              ),
            ),
            child: Center(
                child: Text(S.of(context).realCard_title,
                    style:
                        const TextStyle(fontSize: 18, color: Colors.white)))));
  }

  Widget buildBindCardPart() {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 0, top: 17),
            child: Text(
              S.of(context).applyCard_Desc2,
              style: const TextStyle(
                color: Color(0xFF666666),
                fontSize: 14,
                fontWeight: FontWeight.w400,
                height: 2,
              ),
            ),
          ),

          const Spacer(),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            BottomButton(
              icon: 'asset/images/icon_arrow_right_green.png',
              text: S.of(context).realCard_card_bind.toUpperCase(),
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
          Text(
            S.of(context).card_RecentTransactions,
            style: const TextStyle(
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
                  child: Text(S.of(context).card_card_Payment,
                      style: TextStyle(
                          fontSize: 16,
                          color:
                              currTypeIndex == 0 ? Colors.blue : Colors.grey))),
              InkWell(
                  onTap: () {
                    onClickType(1);
                  },
                  child: Text(S.of(context).card_card_Account,
                      style: TextStyle(
                          fontSize: 16,
                          color:
                              currTypeIndex == 1 ? Colors.blue : Colors.grey))),
            ],
          ),
          const SizedBox(height: 10),
          Expanded(
            child: buildNewSmartRefresher(
              _refreshListController,
              onRefresh: _onListRefresh,
              onLoading: _onListLoading,
              txs.isEmpty
                  ? Center(child: Text(S.of(context).common_NoData))
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
      if (resp.code == 1) {
        hasCard = CommonService.cardPhysicalInfo.cardNo.isNotEmpty;
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
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        SquareButton(
            icon: 'asset/images/icon_pay.png',
            iconWidth: iconWidth,
            text: S.of(context).card_card_Pay,
            onPressed: () {
              showToast(S.of(context).tips_comeSoon);
            }),
        SquareButton(
            icon: 'asset/images/icon_deposit.png',
            text: S.of(context).card_card_Deposit,
            iconWidth: iconWidth,
            onPressed: () async {
              var flag = await showDialog(
                  context: context,
                  builder: (context) {
                    return Send(
                        type: EnumChargeType.deposit,
                        cardNo: CommonService.cardPhysicalInfo.cardNo);
                  });

              if (flag != null && flag) {
                _onBalanceRefresh();
              }
            }),
      ],
    );
  }

  String formatCardExpiryDate() {
    String expiryDate = CommonService.cardPhysicalInfo.expiryDate;
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

  onClickApplyCard() async {
    if (CommonService.cardPhysicalInfo.cardNo.isNotEmpty) {
      showToast("You have a card already");
      return;
    }

    // kyc not pass, can not applyCard
    if (CommonService.userInfo?.kycStatus == '' ||
        CommonService.userInfo!.kycStatus != EnumKycStatus.passed.value) {
      showKycTips(context);
      return;
    }

    showDialog(
        context: context,
        builder: (context) {
          return const PhysicalCardBind();
        });
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
    if (CommonService.cardPhysicalInfo.cardNo.isEmpty) {
      if (_refreshListController.isRefresh) {
        _refreshListController.refreshCompleted();
      }
      if (_refreshListController.isLoading) {
        _refreshListController.loadComplete();
      }
      return;
    }

    CardService.getInstance()
        .cardExchangeInfoList(
            context,
            CommonService.cardPhysicalInfo.cardNo,
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
    if (CommonService.cardPhysicalInfo.cardNo.isEmpty) {
      if (_refreshListController.isRefresh) {
        _refreshListController.refreshCompleted();
      }
      if (_refreshListController.isLoading) {
        _refreshListController.loadComplete();
      }
      return;
    }
    CardService.getInstance()
        .cardHistory(
            context,
            CommonService.cardPhysicalInfo.cardNo,
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
