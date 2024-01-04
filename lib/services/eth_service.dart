import 'dart:developer';

import 'package:awallet/bean/crypto_wallet_info.dart';
import 'package:awallet/bean/enum_eth_key.dart';
import 'package:awallet/bean/enum_network_type.dart';
import 'package:awallet/bean/token_info.dart';
import 'package:awallet/eth.dart';
import 'package:awallet/grpc_services/account_service.dart';
import 'package:awallet/grpc_services/common_service.dart';
import 'package:awallet/grpc_services/user_service.dart';
import 'package:awallet/grpc_services/user_wallet_service.dart';
import 'package:awallet/protos/gen-dart/user/account.pbgrpc.dart';
import 'package:awallet/tools/global_params.dart';
import 'package:awallet/tools/local_storage.dart';
import 'package:flutter/cupertino.dart';

class EthService {
  static final EthService _instance = EthService._internal();

  EthService._internal();

  static EthService getInstance() => _instance;

  factory EthService() => _instance;

  static CryptoWalletInfo? walletInfo;

  CryptoWalletInfo getWalletInfo() {
    walletInfo ??= CryptoWalletInfo(address: LocalStorage.getEthAddress()!);
    return walletInfo!;
  }

  createWalletInfo(BuildContext context) async {
    String? address = LocalStorage.getEthAddress();
    walletInfo = CryptoWalletInfo(address: address!, balance: 0);
  }

  List<TokenInfo> getTokenList() {
    if (CommonService.tokenList.isEmpty) {
      if (GlobalParams.dataInNetwork[GlobalParams.currNetwork]
              [EnumEthKey.tokenList] ==
          null) {
        GlobalParams.resetTokens();
      }

      CommonService.tokenList = GlobalParams
          .dataInNetwork[GlobalParams.currNetwork][EnumEthKey.tokenList];
    }
    return CommonService.tokenList;
  }

  List<TokenInfo> getTokenListPolygon() {
    if (CommonService.tokenListPolygon.isEmpty) {
      if (GlobalParams.dataInNetwork[GlobalParams.currNetwork]
              [EnumEthKey.polygonTokenList] ==
          null) {
        GlobalParams.resetTokens();
      }
      CommonService.tokenListPolygon = GlobalParams
          .dataInNetwork[GlobalParams.currNetwork][EnumEthKey.polygonTokenList];
    }
    return CommonService.tokenListPolygon;
  }

  updateTokenBalances(BuildContext context) async {
    log('updateTokenBalances');
    double totalBalance = 0;

    double balance = await UserWalletService.getInstance().getTokenBalance(TrackedTx_ContractSymbol.ETH.name);
    totalBalance = await setTokenUsdValue(
        context, getTokenList()[0], balance, totalBalance);


    balance = await UserWalletService.getInstance().getTokenBalance(TrackedTx_ContractSymbol.USDT.name);
    totalBalance = await setTokenUsdValue(
        context, getTokenList()[1], balance, totalBalance);

    if (GlobalParams.currNetwork == EnumNetworkType.mainnet) {
      balance =await UserWalletService.getInstance().getTokenBalance(TrackedTx_ContractSymbol.USDC.name);
      totalBalance = await setTokenUsdValue(
          context, getTokenList()[2], balance, totalBalance);
    }

    walletInfo = getWalletInfo();
    walletInfo?.balance = totalBalance;
  }

  Future<double> setTokenUsdValue(BuildContext context, tokenInfo,
      double balance, double totalBalance) async {
    tokenInfo.balance = balance;
    var retInfo = await AccountService.getInstance()
        .getCoinPrice(context, tokenInfo.name);
    if (retInfo.code == 1) {
      var price = retInfo.data as GetCoinPriceResponse;
      tokenInfo.balanceOfDollar = (balance * price.price);
      totalBalance += tokenInfo.balanceOfDollar!;
    }
    return totalBalance;
  }

  Future<TokenInfo> getTokenBalance(
      BuildContext context, TokenInfo tokenInfo) async {
    double balance = 0;
    if (tokenInfo.name == "ETH") {
      balance = await UserWalletService.getInstance().getTokenBalance(TrackedTx_ContractSymbol.ETH.name);
      log("getTokenBalance $balance");
    }
    if (tokenInfo.name == "USDT") {
      balance = await UserWalletService.getInstance().getTokenBalance(TrackedTx_ContractSymbol.USDT.name);
    }
    if (GlobalParams.currNetwork == EnumNetworkType.mainnet) {
      if (tokenInfo.name == "USDC") {
        balance = await UserWalletService.getInstance().getTokenBalance(TrackedTx_ContractSymbol.USDC.name);
      }
    }
    tokenInfo.balance = balance;
    var retInfo = await AccountService.getInstance()
        .getCoinPrice(context, tokenInfo.name);
    if (retInfo.code == 1) {
      var price = retInfo.data as GetCoinPriceResponse;
      tokenInfo.balanceOfDollar = (balance * price.price);
    }
    return tokenInfo;
  }
}
