import 'dart:developer';

import 'package:awallet/bean/crypto_tx_info.dart';
import 'package:awallet/bean/enum_charge_type.dart';
import 'package:awallet/bean/enum_exchange_type.dart';
import 'package:awallet/cards/card_recharge.dart';
import 'package:awallet/cards/exchange.dart';
import 'package:awallet/cards/send.dart';
import 'package:awallet/component/square_button.dart';
import 'package:awallet/component/tx_item.dart';
import 'package:awallet/grpc_services/account_service.dart';
import 'package:awallet/grpc_services/user_service.dart';
import 'package:awallet/src/generated/user/account.pbgrpc.dart';
import 'package:awallet/tools/global_params.dart';
import 'package:awallet/tools/local_storage.dart';
import 'package:awallet/tools/string_tool.dart';
import 'package:flutter/cupertino.dart';
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
  var txs = [];
  var currTypeIndex = 0;
  int dataStartIndex = 0;
  final RefreshController _refreshListController =
      RefreshController(initialRefresh: false);

  final RefreshController _refreshBalanceController =
      RefreshController(initialRefresh: false);

  double totalBalanceUsd = 0;

  @override
  void initState() {
    var address = LocalStorage.getEthAddress();
    if (address != null) {
      UserService.getInstance().updateUser(context, address).then((value) {
        if (value.code == 1) {
          log(value.data.toString());
        } else {
          log(value.msg);
        }
      });
    }
    _onBalanceRefresh();
    _onListRefresh();
    super.initState();
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
          const Text(
            'Recent Transactions',
            style: TextStyle(
              color: Color(0xFF999999),
              fontSize: 15,
              fontFamily: 'Montserrat',
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
                  child: Text("SwapTx",
                      style: TextStyle(
                          color: currTypeIndex == 0
                              ? Colors.lightBlueAccent
                              : Colors.black))),
              InkWell(
                  onTap: () {
                    onClickType(1);
                  },
                  child: Text("AccountHistory",
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
                              return CryptoTxItem(txInfo: txs[index]);
                            }
                            return null;
                          })))
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
            icon: 'asset/images/icon_top_up.png',
            text: 'Deposit',
            iconWidth: iconWidth,
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (context) {
                    return CardRecharge(amt: '', type: EnumChargeType.deposit);
                  });
            }),
        SquareButton(
            icon: 'asset/images/icon_top_up.png',
            text: 'Withdraw',
            iconWidth: iconWidth,
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (context) {
                    return Send(type: EnumChargeType.withdraw);
                  });
            }),
        SquareButton(
            icon: 'asset/images/icon_exchange.png',
            text: 'Exchange',
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
                    fontSize: 22,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                TextSpan(
                  text: StringTools.formatCurrencyNum(totalBalanceUsd),
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          )),
    );
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
        .getSwapTxList(context, dataStartIndex, pageSize)
        .then((resp) {
      if (resp.code == 1) {
        var items = (resp.data as GetSwapTxListResponse).items;
        if (items.isNotEmpty) {
          for (var element in items) {
            txs.add(CryptoTxInfo(
                title:
                    "Exchange (${element.fromSymbol.name}-${element.targetSymbol.name})",
                txTime: DateTime.fromMillisecondsSinceEpoch(
                    (element.createdAt * 1000).toInt()),
                fromSymbol: element.fromSymbol.name,
                targetSymbol: element.targetSymbol.name,
                amount: element.amt,
                amountOfDollar: element.settleAmt,
                status:
                    element.status.value > 2 ? element.status.value - 2 : 0));
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

  getAccountHistory() {
    AccountService.getInstance()
        .getAccountHistory(context, dataStartIndex, pageSize)
        .then((resp) {
      if (resp.code == 1) {
        var items = (resp.data as GetAccountHistoryResponse).items;
        if (items.isNotEmpty) {
          for (var element in items) {
            txs.add(CryptoTxInfo(
                title: element.sourceType.name,
                txTime: DateTime.fromMillisecondsSinceEpoch(
                    (element.createdAt * 1000).toInt()),
                fromSymbol: element.sourceId,
                targetSymbol: "",
                amount: element.amt.abs(),
                amountOfDollar: null,
                status: 3));
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

  void _onBalanceRefresh() {
    AccountService.getInstance().getAccountInfo(context).then((info) {
      if (info.code == 1) {
        var accountInfo = info.data as AccountInfo;
        totalBalanceUsd = accountInfo.balanceUsd;
        if (mounted) {
          setState(() {});
        }
      }
      _refreshBalanceController.refreshCompleted();
    });
  }
}
