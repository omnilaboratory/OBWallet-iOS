import 'dart:developer';

import 'package:awallet/bean/crypto_tx_info.dart';
import 'package:awallet/bean/enum_charge_type.dart';
import 'package:awallet/bean/enum_exchange_type.dart';
import 'package:awallet/cards/account_transfer_to_card.dart';
import 'package:awallet/cards/card_recharge.dart';
import 'package:awallet/cards/exchange.dart';
import 'package:awallet/component/common.dart';
import 'package:awallet/component/crypto_tx_item.dart';
import 'package:awallet/component/square_button.dart';
import 'package:awallet/component/swap_tx_item.dart';
import 'package:awallet/generated/l10n.dart';
import 'package:awallet/grpc_services/account_service.dart';
import 'package:awallet/grpc_services/card_service.dart';
import 'package:awallet/grpc_services/common_service.dart';
import 'package:awallet/protos/gen-dart/user/account.pbgrpc.dart';
import 'package:awallet/protos/gen-dart/user/card.pbgrpc.dart';
import 'package:awallet/tools/global_params.dart';
import 'package:awallet/tools/string_tool.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dash/flutter_dash.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class Account extends StatefulWidget {
  Account({super.key});

  final balances = [];

  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {
  bool isBeforeUpdateBalance = true;

  var txs = [];
  var currTypeIndex = 0;
  int dataStartIndex = 0;
  final RefreshController _refreshListController =
      RefreshController(initialRefresh: false);

  final RefreshController _refreshBalanceController =
      RefreshController(initialRefresh: false);

  bool hasCard = CommonService.userInfo!.cardCount > 0;
  double? totalBalanceUsd = CommonService.accountInfo == null
      ? 0
      : CommonService.accountInfo?.balance;

  @override
  void initState() {
    _onBalanceRefresh();
    _onListRefresh();
    checkHasCard();

    GlobalParams.eventBus.on().listen((event) {
      if (mounted) {
        if (event == "exchange_showTips") {
          _onBalanceRefresh();
        }
      }
    });

    super.initState();
  }

  void checkHasCard() {
    if (hasCard) {
      return;
    }
    hasCard = CommonService.userInfo!.cardCount > 0;
    if (hasCard && mounted) {
      setState(() {});
      return;
    }

    hasCard = CommonService.realCardList.isNotEmpty;
    if (hasCard && mounted) {
      setState(() {});
      return;
    }

    CardService.getInstance()
        .cardList(context, withoutBalance: true)
        .then((info) {
      if (info.code == 1) {
        var items = info.data;
        for (int i = 0; i < items.length; i++) {
          var item = items[i] as CardInfo;
          if (item.isVcard == true) {
            hasCard = true;
            break;
          }
          if (item.isVcard == false && item.pcardStatus == 1) {
            hasCard = true;
            break;
          }
        }
        if (hasCard && mounted) {
          setState(() {});
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SmartRefresher(
      controller: _refreshBalanceController,
      onRefresh: _onBalanceRefresh,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 28),
          buildBalance(),
          // txs.isNotEmpty ? buildBalanceInCurrency() : const SizedBox(height: 0),
          const SizedBox(height: 30),
          buildTxButtons(),
          Padding(
            padding: const EdgeInsets.only(top: 25, bottom: 10),
            child: Dash(
              dashColor: const Color(0xFFCFCFCF),
              length: MediaQuery.of(context).size.width - 40,
            ),
          ),
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
                  child: SizedBox(
                    width: 80,
                    height: 24,
                    child: Center(
                      child: Text(S.of(context).card_account_Exchange,
                          style: TextStyle(
                              fontSize: 16,
                              color: currTypeIndex == 0
                                  ? Colors.blue
                                  : Colors.grey)),
                    ),
                  )),
              InkWell(
                  onTap: () {
                    onClickType(1);
                  },
                  child: SizedBox(
                    width: 80,
                    height: 24,
                    child: Center(
                      child: Text(S.of(context).card_account_Account,
                          style: TextStyle(
                              fontSize: 16,
                              color: currTypeIndex == 1
                                  ? Colors.blue
                                  : Colors.grey)),
                    ),
                  ))
            ],
          ),
          const SizedBox(height: 10),
          Expanded(
              child: buildNewSmartRefresher(
            _refreshListController,
            txs.isEmpty
                ? Center(child: Text(S.of(context).common_NoData))
                : ListView.builder(
                    padding: const EdgeInsets.only(top: 20),
                    itemCount: txs.length,
                    itemBuilder: (BuildContext context, int index) {
                      if (index < txs.length) {
                        if(currTypeIndex==0){
                          return SwapTxItem(txInfo: txs[index]);
                        }else{
                          return CryptoTxItem(txInfo: txs[index]);
                        }

                      }
                      return null;
                    }),
            onRefresh: _onListRefresh,
            onLoading: _onListLoading,
          ))
        ],
      ),
    );
  }

  Row buildTxButtons() {
    var size = MediaQuery.sizeOf(context);
    var iconWidth = (size.width - 40) / 3;
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SquareButton(
            icon: 'asset/images/icon_deposit.png',
            text: S.of(context).common_Deposit,
            iconWidth: iconWidth,
            onPressed: () async {
              var flag = await showDialog(
                  context: context,
                  builder: (context) {
                    return CardRecharge(amt: '', type: EnumChargeType.deposit);
                  });
              if (flag != null && flag) {
                _onBalanceRefresh();
              }
            }),
        SquareButton(
            icon: 'asset/images/icon_withdraw.png',
            // text: S.of(context).common_Withdraw,
            text: S.of(context).common_recharge2card,
            iconWidth: iconWidth,
            onPressed: () async {
              if (hasCard == false) {
                alert(S.of(context).tips_applyCardFirst, context, onJump);
              } else {
                var flag = await showDialog(
                    context: context,
                    builder: (context) {
                      return AccountTransferToCard();
                    });
                if (flag != null && flag) {
                  _onBalanceRefresh();
                }
              }
            }),
        SquareButton(
            icon: 'asset/images/icon_exchange.png',
            text: S.of(context).common_Exchange,
            iconWidth: iconWidth,
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (context) {
                    return Exchange(type: EnumExchangeType.buy, name: 'ETH');
                  });
            }),
      ],
    );
  }

  Widget buildBalance() {
    return Container(
      padding: const EdgeInsets.only(left: 30),
      width: double.infinity,
      height: 100,
      decoration: ShapeDecoration(
        color: const Color(0xFF638AC1),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Align(
          alignment: Alignment.centerLeft,
          child: Text.rich(
            TextSpan(
              children: [
                const TextSpan(
                  text: '\$ ',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                TextSpan(
                  text: isBeforeUpdateBalance && totalBalanceUsd! == 0
                      ? "--"
                      : StringTools.formatCurrencyNum(totalBalanceUsd!),
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          )),
    );
  }

  onJump() {
    GlobalParams.eventBus.fire("changeTab");
  }

  void _onListRefresh() async {
    txs = [];
    dataStartIndex = 0;
    if (currTypeIndex == 0) {
      getSwapTxList();
    } else {
      getAccountHistory();
    }
  }

  void _onListLoading() async {
    dataStartIndex += pageSize;
    if (currTypeIndex == 0) {
      getSwapTxList();
    } else {
      getAccountHistory();
    }
  }

  void onClickType(int type) {
    if (currTypeIndex == type) {
      return;
    }
    if (_refreshListController.isRefresh || _refreshListController.isLoading) {
      return;
    }

    log("onClickType ");
    txs = [];
    currTypeIndex = type;
    dataStartIndex = 0;
    if (type == 0) {
      getSwapTxList();
    }
    if (type == 1) {
      getAccountHistory();
    }
    if (mounted) {
      setState(() {});
    }
  }

  getSwapTxList() {
    AccountService.getInstance()
        .getSwapTxList(context, dataStartIndex, pageSize, null)
        .then((resp) {
      if (resp.code == 1) {
        var items = (resp.data as GetSwapTxListResponse).items;
        if (items.isNotEmpty) {
          for (var element in items) {
            txs.add(CryptoTxInfo(
                title:
                    "${S.current.exchange_tile} (${element.fromSymbol.name}-${element.targetSymbol.name})",
                txTime: DateTime.fromMillisecondsSinceEpoch(
                    (element.createdAt * 1000).toInt()),
                fromSymbol: element.fromSymbol.name,
                targetSymbol: element.targetSymbol.name,
                amount: element.amt,
                amountOfDollar: element.settleAmt,
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

  getAccountHistory() {
    AccountService.getInstance()
        .getAccountHistory(context, dataStartIndex, pageSize,token: TrackedTx_ContractSymbol.USD)
        .then((resp) {
      if (resp.code == 1) {
        var items = (resp.data as GetAccountHistoryResponse).items;
        if (items.isNotEmpty) {
          for (var element in items) {
            txs.add(CryptoTxInfo(
                title: element.sourceType.name,
                txTime: DateTime.fromMillisecondsSinceEpoch(
                    (element.createdAt * 1000).toInt()),
                fromSymbol: element.symbol.name,
                targetSymbol: "",
                amount: element.amt,
                amountOfDollar: element.balance,
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

  void _onBalanceRefresh() {
    AccountService.getInstance().getAccountInfo(context).then((info) {
      if (info.code == 1) {
        var accountInfo = info.data as AccountInfo;
        totalBalanceUsd = accountInfo.balance;
        isBeforeUpdateBalance = false;
        if (mounted) {
          setState(() {});
        }
      }
      _refreshBalanceController.refreshCompleted();
    });
  }
}
