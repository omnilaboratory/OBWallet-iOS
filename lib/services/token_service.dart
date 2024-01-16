import 'package:awallet/bean/crypto_wallet_info.dart';
import 'package:awallet/bean/token_info.dart';
import 'package:awallet/grpc_services/user_wallet_service.dart';
import 'package:awallet/protos/gen-dart/user/account.pbgrpc.dart';
import 'package:awallet/protos/gen-dart/user/user_wallet.pbgrpc.dart';
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
    walletInfo ??= CryptoWalletInfo(address: LocalStorage.getEthAddress()!);
    return walletInfo!;
  }

  createWalletInfo(BuildContext context) async {
    String? address = LocalStorage.getEthAddress();
    walletInfo = CryptoWalletInfo(address: address!, balance: 0);
  }

  List<TokenInfo> getTokenList({NetWork? network}) {
    return tokenList[NetWork.ETH]!;
  }

  updateTokenBalances(BuildContext context) async {
    walletInfo = getWalletInfo();
    GetTokenBalalanceResponse? resp =
        await UserWalletService.getInstance().getAllTokenBalance();
    if (resp != null) {
      walletInfo?.balance = resp.allUsd;


      getTokenList().forEach((tokenInfo) {
        if (tokenInfo.name == "USDT") {
          tokenInfo.balance = resp.balanceUsdt;
          tokenInfo.balanceOfDollar = tokenInfo.balance;
        }
        if (tokenInfo.name == "USDC") {
          tokenInfo.balance = resp.balanceUsdc;
          tokenInfo.balanceOfDollar = tokenInfo.balance;
        }
      });


    }
  }

  Future<TokenInfo> getTokenBalance(
      BuildContext context, TokenInfo tokenInfo) async {

    double balance = 0;
    GetTokenBalalanceResponse? resp =
        await UserWalletService.getInstance().getAllTokenBalance();
    if (resp != null) {
      if (tokenInfo.name == "USDT") {
        balance = resp.balanceUsdt;
      }
      if (tokenInfo.name == "USDC") {
        balance = resp.balanceUsdc;
      }
    }
    tokenInfo.balance = balance;
    tokenInfo.balanceOfDollar = (balance);
    return tokenInfo;
  }
}
