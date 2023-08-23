
import 'dart:math' as math;
import 'dart:developer';
import 'package:awallet/tools/local_storage.dart';
import 'package:awallet/utils.dart';
import 'package:web3dart/web3dart.dart';
import 'package:http/http.dart';
import 'contract_abis/USDT.g.dart';

class Eth {

  /// Generate a new eth address
  static Future<String> genEthAddress() async {
    try {
      // Generate a new ETH address
      var rng = math.Random.secure();
      EthPrivateKey cred = EthPrivateKey.createRandom(rng);
      var address = cred.address.hex;
      log('address: $address');

      // Get the private key
      var key = cred.privateKeyInt;
      var privateKey = key.toRadixString(16);
      log('privateKey: $privateKey');

      // Save the address and private key to local storage on device
      // await Utils.saveToStorage('eth_address', address);
      // await Utils.saveToStorage('private_key', privateKey);
      LocalStorage.save(LocalStorage.ethAddress, address);
      LocalStorage.save(LocalStorage.ethPrivateKey, privateKey);
      // log('Stored status: $res');

      return address;

    } catch (e) {
      // TODO: write to log file
      log('genEthAddress -> error: $e');
      return '';
    }
  }

  /// Get currently ETH account (address)
  static Future<String?> getEthAccount() async {
    try {
      var result = await Utils.readFromStorage('eth_address');
      return result;
    } catch (e) {
      log('getEthAccount -> error: $e');
      return '';
    }
  }

  /// Get the private key of currently ETH account (address)
  static Future<String?> getPrivateKeyOfEthAccount() async {
    try {
      var result = await Utils.readFromStorage('private_key');
      return result;
    } catch (e) {
      log('getPrivateKeyOfEthAccount -> error: $e');
      return '';
    }
  }

  /// Get ETH address with private key
  static String getEthAddressFromPrivKey(String privateKey) {
    try {
      EthPrivateKey fromHex = EthPrivateKey.fromHex(privateKey);
      var address = fromHex.address.hex;
      return address;
    } catch (e) {
      log('getEthAddressFromPrivKey -> error: $e');
      return '';
    }
  }

  /// Get ETH balance of an Eth Address
  static Future<double> getBalanceOfETH(String address) async {
    try {
      // will replace to mainnet
      var apiUrl = "https://eth-goerli.g.alchemy.com/v2/JWXQeMFoFECvkbukMCi5GGiEMdmQb3Ch";
      // var apiUrl = "https://eth-mainnet.g.alchemy.com/v2/JWXQeMFoFECvkbukMCi5GGiEMdmQb3Ch";

      var httpClient = Client();
      var ethClient  = Web3Client(apiUrl, httpClient);

      // You can now call rpc methods. This one will query the amount of Ether you own
      EthereumAddress ethAddr = EthereumAddress.fromHex(address);
      EtherAmount     balance = await ethClient.getBalance(ethAddr);
      var result = balance.getValueInUnit(EtherUnit.ether);
      return result;
    } catch (e) {
      log('getBalanceOfETH -> error: $e');
      return -1;
    }
  }

  /// Get USDT balance of an Eth Address
  static Future<double> getBalanceOfUSDT(String address) async {
    try {
      // will replace to mainnet
      var apiUrl = "https://eth-goerli.g.alchemy.com/v2/JWXQeMFoFECvkbukMCi5GGiEMdmQb3Ch";
      // var apiUrl = "https://eth-mainnet.g.alchemy.com/v2/JWXQeMFoFECvkbukMCi5GGiEMdmQb3Ch";

      var httpClient = Client();
      var ethClient  = Web3Client(apiUrl, httpClient);

      var goerliContractOfUSDT  = '0x7A203Ad2432Ea8a2A97BAc74BA2fa87d3963f13b';
      // var mainnetContractOfUSDT = '0xdAC17F958D2ee523a2206206994597C13D831ec7';

      EthereumAddress contract = EthereumAddress.fromHex(goerliContractOfUSDT);
      EthereumAddress ethAddr  = EthereumAddress.fromHex(address);

      var usdt    = USDT(address: contract, client: ethClient);
      var balance = await usdt.balanceOf(ethAddr);

      // The USDT contract has 6 decimals, so has to process for BigInt with the code.
      double result = balance / BigInt.from(10).pow(6);
      return result;
    } catch (e) {
      log('getBalanceOfUSDT -> error: $e');
      return -1;
    }
  }

  /// Sending transactions
  static void sendTransaction() async {
    try {
      // need to replace
      var apiUrl = "https://goerli.infura.io/v3/5a21ad8ca1a94992b9a20ac7ac666963";
      // var apiUrl = "https://mainnet.infura.io/v3/5a21ad8ca1a94992b9a20ac7ac666963";

      var httpClient = Client();
      var ethClient = Web3Client(apiUrl, httpClient);

      var privateKey  = await Eth.getPrivateKeyOfEthAccount();
      var credentials = EthPrivateKey.fromHex(privateKey!);

      var response = await ethClient.sendTransaction(
        credentials,
        Transaction(
          from: EthereumAddress.fromHex('0x79ce3900831f791fee855b7ee42130e04dd51c06'),
          to: EthereumAddress.fromHex('0x79ce3900831f791fee855b7ee42130e04dd51c06'),
          gasPrice: EtherAmount.inWei(BigInt.one),
          maxGas: 100000,
          value: EtherAmount.fromInt(EtherUnit.ether, 1),
        ),
      );

      log('response -> $response');

    } catch (e) {
      log('sendTransaction -> error: $e');
    }
  }
}