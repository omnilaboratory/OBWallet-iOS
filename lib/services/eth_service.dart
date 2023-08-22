import 'package:awallet/bean/crypto_wallet_info.dart';
import 'package:awallet/bean/grpc_response.dart';
import 'package:awallet/eth.dart';
import 'package:awallet/tools/local_storage.dart';


class EthService {
  static final EthService _instance = EthService._internal();

  EthService._internal();

  static EthService getInstance() {
    return _instance;
  }

  factory EthService() => _instance;


  static CryptoWalletInfo? walletInfo;

  static Future<CryptoWalletInfo> getEthWalletInfo() async {
    String? address = LocalStorage.get(LocalStorage.ethAddress);
    CryptoWalletInfo walletInfo = CryptoWalletInfo(address: "");
    if (address == null || address.isEmpty) {
      address = await Eth.genEthAddress();
    }
    walletInfo.address = address;

    double ethBalance = await Eth.getBalanceOfEthAddress(address);
    walletInfo.balance = ethBalance;

    return walletInfo;
  }
}
