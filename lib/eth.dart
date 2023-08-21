
import 'dart:math' as math;
import 'dart:developer';
import 'package:awallet/utils.dart';
import 'package:web3dart/web3dart.dart';
import 'package:http/http.dart';

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
      await Utils.saveToStorage('eth_address', address);
      await Utils.saveToStorage('private_key', privateKey);
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

  /// Get balance of an Eth Address
  static Future<double> getBalanceOfEthAddress(String address) async {
    try {
      // will replace to mainnet
      var apiUrl = "https://goerli.infura.io/v3/5a21ad8ca1a94992b9a20ac7ac666963";

      var httpClient = Client();
      var ethClient  = Web3Client(apiUrl, httpClient);

      // You can now call rpc methods. This one will query the amount of Ether you own
      EthereumAddress ethAddr = EthereumAddress.fromHex(address);
      EtherAmount     balance = await ethClient.getBalance(ethAddr);
      var result = balance.getValueInUnit(EtherUnit.ether);
      return result;
    } catch (e) {
      log('getBalanceOfEthAddress -> error: $e');
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