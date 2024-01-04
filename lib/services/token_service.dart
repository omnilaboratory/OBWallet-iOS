import 'dart:developer';

import 'package:awallet/bean/crypto_wallet_info.dart';
import 'package:awallet/bean/enum_network_type.dart';
import 'package:awallet/bean/token_info.dart';
import 'package:awallet/grpc_services/account_service.dart';
import 'package:awallet/grpc_services/common_service.dart';
import 'package:awallet/grpc_services/user_wallet_service.dart';
import 'package:awallet/protos/gen-dart/user/account.pbgrpc.dart';
import 'package:awallet/tools/global_params.dart';
import 'package:awallet/tools/local_storage.dart';
import 'package:flutter/cupertino.dart';

Map<NetWork, List<TokenInfo>> tokenList = Map.from({
  NetWork.ETH: [
    TokenInfo(
        name: "USDT",
        iconUrl: 'asset/images/icon_tether.png',
        netName: NetWork.ETH.name),
    TokenInfo(
        name: "USDC",
        iconUrl: 'asset/images/icon_usdc_logo.png',
        netName: NetWork.ETH.name),
  ],
  NetWork.POLYGON: [
    TokenInfo(
        name: "USDT",
        iconUrl: 'asset/images/icon_tether.png',
        netName: NetWork.POLYGON.name),
    TokenInfo(
        name: "USDC",
        iconUrl: 'asset/images/icon_usdc_logo.png',
        netName: NetWork.POLYGON.name),
  ],
  NetWork.TRON: [
    TokenInfo(
        name: "USDT",
        iconUrl: 'asset/images/icon_tether.png',
        netName: NetWork.TRON.name),
    TokenInfo(
        name: "USDC",
        iconUrl: 'asset/images/icon_usdc_logo.png',
        netName: NetWork.TRON.name),
  ],
});

class TokenService {
  static final TokenService _instance = TokenService._internal();

  TokenService._internal();

  static TokenService getInstance() => _instance;

  factory TokenService() => _instance;

  static CryptoWalletInfo? walletInfo;

  CryptoWalletInfo getWalletInfo({NetWork? network}) {
    if (network == NetWork.TRON) {
      return CryptoWalletInfo(address: CommonService.userInfo!.tronAddress);
    }
    return CryptoWalletInfo(address: LocalStorage.getEthAddress()!);
  }

  createWalletInfo(BuildContext context) async {
    String? address = LocalStorage.getEthAddress();
    walletInfo = CryptoWalletInfo(address: address!, balance: 0);
  }

  List<TokenInfo> getTokenList({NetWork? network}) {
    if (network != null) {
      return tokenList[network]!;
    } else {
      List<TokenInfo> retList = [];
      tokenList.forEach((key, value) {
        retList.addAll(value);
      });
      return retList;
    }
  }

  updateTokenBalances(BuildContext context) async {
    log('updateTokenBalances');
    double totalBalance = 0;

    double balance = await UserWalletService.getInstance()
        .getTokenBalance(TrackedTx_ContractSymbol.ETH.name);
    totalBalance = await setTokenUsdValue(
        context, getTokenList()[0], balance, totalBalance);

    balance = await UserWalletService.getInstance()
        .getTokenBalance(TrackedTx_ContractSymbol.USDT.name);
    totalBalance = await setTokenUsdValue(
        context, getTokenList()[1], balance, totalBalance);

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
      balance = await UserWalletService.getInstance()
          .getTokenBalance(TrackedTx_ContractSymbol.ETH.name);
      log("getTokenBalance $balance");
    }
    if (tokenInfo.name == "USDT") {
      balance = await UserWalletService.getInstance()
          .getTokenBalance(TrackedTx_ContractSymbol.USDT.name);
    }
    if (GlobalParams.currNetwork == EnumNetworkType.mainnet) {
      if (tokenInfo.name == "USDC") {
        balance = await UserWalletService.getInstance()
            .getTokenBalance(TrackedTx_ContractSymbol.USDC.name);
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
