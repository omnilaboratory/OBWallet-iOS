import 'dart:developer';

import 'package:awallet/bean/crypto_wallet_info.dart';
import 'package:awallet/bean/enum_eth_key.dart';
import 'package:awallet/bean/enum_network_type.dart';
import 'package:awallet/bean/token_info.dart';
import 'package:awallet/eth.dart';
import 'package:awallet/grpc_services/account_service.dart';
import 'package:awallet/grpc_services/user_service.dart';
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
    if (address == null || address.isEmpty) {
      address = await Eth.genEthAddress(context);
    }
    walletInfo = CryptoWalletInfo(address: address, balance: 0);
  }

  bool recoverWallet(BuildContext context, String? wif) {
    if (wif == null || wif.isEmpty) {
      return false;
    }
    var address = Eth.getEthAddressFromPrivKey(wif);
    if (address.isEmpty) {
      return false;
    }
    walletInfo = CryptoWalletInfo(address: address, balance: 0);
    LocalStorage.setEthAddress(address);
    LocalStorage.setEthPrivateKey(wif);
    UserService.getInstance().updateUser(context, address);
    return true;
  }

  List<TokenInfo> _tokenList = [];

  List<TokenInfo> getTokenList() {
    if (_tokenList.isEmpty) {
      _tokenList = GlobalParams.dataInNetwork[GlobalParams.currNetwork]
          [EnumEthKey.tokenList];
    }
    return _tokenList;
  }

  List<TokenInfo> _tokenListPolygon = [];

  List<TokenInfo> getTokenListPolygon() {
    if (_tokenListPolygon.isEmpty) {
      _tokenListPolygon = GlobalParams.dataInNetwork[GlobalParams.currNetwork]
          [EnumEthKey.polygonTokenList];
    }
    return _tokenListPolygon;
  }

  updateTokenBalances(BuildContext context) async {
    log('updateTokenBalances');
    String address = LocalStorage.getEthAddress()!;
    double totalBalance = 0;

    double balance = await Eth.getBalanceOfETH(address);
    totalBalance = await setTokenUsdValue(
        context, getTokenList()[0], balance, totalBalance);

    balance = await Eth.getBalanceOfUSDT(address);
    totalBalance = await setTokenUsdValue(
        context, getTokenList()[1], balance, totalBalance);

    if (GlobalParams.currNetwork == EnumNetworkType.mainnet) {
      balance = await Eth.getBalanceOfUSDC(address);
      totalBalance = await setTokenUsdValue(
          context, getTokenList()[2], balance, totalBalance);
    }

    // Polygon usdt
    balance = await Eth.getBalanceOfPolygonUSDT(address);
    totalBalance = await setTokenUsdValue(
        context, getTokenListPolygon()[0], balance, totalBalance);

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
    String address = LocalStorage.getEthAddress()!;
    double balance = 0;
    if (tokenInfo.name == "ETH") {
      balance = await Eth.getBalanceOfETH(address);
      log("getTokenBalance $balance");
    }
    if (tokenInfo.name == "USDT") {
      balance = await Eth.getBalanceOfUSDT(address);
    }
    if (GlobalParams.currNetwork == EnumNetworkType.mainnet) {
      if (tokenInfo.name == "USDC") {
        balance = await Eth.getBalanceOfUSDC(address);
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
