import 'dart:developer';

import 'package:awallet/bean/crypto_wallet_info.dart';
import 'package:awallet/bean/enum_network_type.dart';
import 'package:awallet/bean/token_info.dart';
import 'package:awallet/eth.dart';
import 'package:awallet/grpc_services/account_service.dart';
import 'package:awallet/grpc_services/user_service.dart';
import 'package:awallet/src/generated/user/account.pbgrpc.dart';
import 'package:awallet/tools/global_params.dart';
import 'package:awallet/tools/local_storage.dart';
import 'package:flutter/cupertino.dart';

class EthService {
  static final EthService _instance = EthService._internal();

  EthService._internal();

  static EthService getInstance() => _instance;

  factory EthService() => _instance;

  CryptoWalletInfo? _walletInfo;

  CryptoWalletInfo getWalletInfo() {
    _walletInfo ??= CryptoWalletInfo(address: LocalStorage.getEthAddress()!);
    return _walletInfo!;
  }

  createWalletInfo(BuildContext context) async {
    String? address = LocalStorage.getEthAddress();
    if (address == null || address.isEmpty) {
      address = await Eth.genEthAddress(context);
    }
    _walletInfo = CryptoWalletInfo(address: address, balance: 0);
  }

  bool recoverWallet(BuildContext context, String? wif) {
    if (wif == null || wif.isEmpty) {
      return false;
    }
    var address = Eth.getEthAddressFromPrivKey(wif);
    if (address.isEmpty) {
      return false;
    }
    _walletInfo = CryptoWalletInfo(address: address, balance: 0);
    LocalStorage.setEthAddress(address);
    LocalStorage.setEthPrivateKey(wif);
    UserService.getInstance().updateUser(context, address);
    return true;
  }

  List<TokenInfo> _tokenList = [];

  List<TokenInfo> getTokenList() {
    if (_tokenList.isEmpty) {
      if (GlobalParams.currNetwork == EnumNetworkType.goerli) {
        _tokenList = GlobalParams.ethGoerliTokenList;
      } else {
        _tokenList = GlobalParams.ethMainnetTokenList;
      }
    }
    return _tokenList;
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

    _walletInfo = getWalletInfo();
    _walletInfo?.balance = totalBalance;
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
}
