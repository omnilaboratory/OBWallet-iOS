import 'package:awallet/bean/crypto_wallet_info.dart';
import 'package:awallet/bean/token_info.dart';
import 'package:awallet/eth.dart';
import 'package:awallet/tools/local_storage.dart';

class EthService {
  static final EthService _instance = EthService._internal();

  EthService._internal();

  static EthService getInstance() => _instance;

  factory EthService() => _instance;

  CryptoWalletInfo? _walletInfo;

  CryptoWalletInfo getWalletInfo() {
    _walletInfo ??=
        CryptoWalletInfo(address: LocalStorage.get(LocalStorage.ethAddress));
    return _walletInfo!;
  }

  Future<void> createWalletInfo() async {
    String? address = LocalStorage.get(LocalStorage.ethAddress);
    _walletInfo = CryptoWalletInfo(address: "");
    if (address == null || address.isEmpty) {
      address = await Eth.genEthAddress();
    }
    _walletInfo?.address = address;
    _walletInfo?.balance = 0;
  }

  List<TokenInfo> _tokenList = [];

  List<TokenInfo> getTokenList() {
    if (_tokenList.isEmpty) {
      _tokenList = [
        TokenInfo(name: "ETH", iconUrl: 'asset/images/icon_eth_logo.png'),
        TokenInfo(name: "USDT", iconUrl: 'asset/images/icon_tether.png'),
      ];
    }
    return _tokenList;
  }

  Future<void> updateTokenBalances() async {
    String address = LocalStorage.get(LocalStorage.ethAddress);
    double totalBalance = 0;
    double balance = await Eth.getBalanceOfETH(address);
    totalBalance += balance;
    getTokenList()[0].balance = balance;

    balance = await Eth.getBalanceOfUSDT(address);
    totalBalance += balance;
    getTokenList()[1].balance = balance;

    _walletInfo = getWalletInfo();
    _walletInfo?.balance = totalBalance;
  }
}
