
import 'dart:math' as math;
import 'dart:developer';
import 'package:awallet/tools/local_storage.dart';
import 'package:intl/intl.dart';
import 'package:web3dart/web3dart.dart';
import 'package:http/http.dart';
import 'contract_abis/USDT.g.dart';

class Eth {

  // static String apiUrl = "https://eth-mainnet.g.alchemy.com/v2/JWXQeMFoFECvkbukMCi5GGiEMdmQb3Ch";
  static String apiUrl = "https://eth-goerli.g.alchemy.com/v2/JWXQeMFoFECvkbukMCi5GGiEMdmQb3Ch";

  static Web3Client? ethClient;

  static initWeb3Client() {
    ethClient = Web3Client(apiUrl, Client());
    log('ethClient -> $ethClient');
  }

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
      LocalStorage.save(LocalStorage.ethAddress, address);
      LocalStorage.save(LocalStorage.ethPrivateKey, privateKey);

      return address;
    } catch (e) {
      log('genEthAddress -> error: $e');
      return '';
    }
  }

  /// Get currently ETH account (address)
  static String getEthAccount() {
    try {
      var result = LocalStorage.get(LocalStorage.ethAddress);
      return result;
    } catch (e) {
      log('getEthAccount -> error: $e');
      return '';
    }
  }

  /// Get the private key of currently ETH account (address)
  static String getPrivateKeyOfEthAccount() {
    try {
      var result = LocalStorage.get(LocalStorage.ethPrivateKey);
      return result;
    } catch (e) {
      log('getPrivateKeyOfEthAccount -> error: $e');
      return '';
    }
  }

  /// Get ETH address from private key
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
      EthereumAddress ethAddr = EthereumAddress.fromHex(address);
      EtherAmount balance = await ethClient!.getBalance(ethAddr);
      var result = balance.getValueInUnit(EtherUnit.ether);
      return result;
    } catch (e) {
      log('getBalanceOfETH -> error: $e');
      return 0;
    }
  }

  /// Get USDT balance of an Eth Address
  static Future<double> getBalanceOfUSDT(String address) async {
    try {
      var goerliContractOfUSDT  = '0x7A203Ad2432Ea8a2A97BAc74BA2fa87d3963f13b';
      // var mainnetContractOfUSDT = '0xdAC17F958D2ee523a2206206994597C13D831ec7';

      EthereumAddress contract = EthereumAddress.fromHex(goerliContractOfUSDT);
      EthereumAddress ethAddr  = EthereumAddress.fromHex(address);

      var usdt    = USDT(address: contract, client: ethClient!);
      var balance = await usdt.balanceOf(ethAddr);

      // The USDT contract has 6 decimals, so has to process for BigInt with the code.
      double result = balance / BigInt.from(10).pow(6);
      return result;
    } catch (e) {
      log('getBalanceOfUSDT -> error: $e');
      return 0;
    }
  }

  /// Get USDC balance of an Eth Address
  static Future<double> getBalanceOfUSDC(String address) async {
    try {
      EthereumAddress contract = EthereumAddress.fromHex('0xA0b86991c6218b36c1d19D4a2e9Eb0cE3606eB48');
      EthereumAddress ethAddr  = EthereumAddress.fromHex(address);

      var usdc    = USDT(address: contract, client: ethClient!);
      var balance = await usdc.balanceOf(ethAddr);

      // The USDC contract has 6 decimals, so has to process for BigInt with the code.
      double result = balance / BigInt.from(10).pow(6);
      return result;
    } catch (e) {
      log('getBalanceOfUSDC -> error: $e');
      return 0;
    }
  }

  /// Sending ETH to an address
  static Future<String> sendEthTo(String toAddress, double amount) async {
    try {
      var privateKey  = LocalStorage.get(LocalStorage.ethPrivateKey);
      var credentials = EthPrivateKey.fromHex(privateKey);

      BigInt weiAmount = BigInt.from((amount * 1000000000000000000).toInt());

      var response = await ethClient!.sendTransaction(
        credentials,
        Transaction(
          to:    EthereumAddress.fromHex(toAddress),
          value: EtherAmount.fromBigInt(EtherUnit.wei, weiAmount),
        ),
        chainId: 5  // Goerli testnet - will be mainnet(1)
      );

      return response;
    } catch (e) {
      log('sendEthTo -> error: $e');
      return '';
    }
  }

  /// Returns the amount of Ether typically needed to pay for one unit of gas.
  static Future<double> getGasPrice() async {
    try {
      EtherAmount gasPrice = await ethClient!.getGasPrice();

      // Convert EtherAmount to amount of ETH
      double result = gasPrice.getValueInUnit(EtherUnit.ether);
      return result;
    } catch (e) {
      log('getGasPrice -> error: $e');
      return 0;
    }
  }

  /// Estimate the amount of gas that would be necessary 
  /// if the transaction was sent via sendTransaction (web3dart). 
  /// Note that the estimate may be significantly higher 
  /// than the amount of gas actually used by the transaction.
  static Future<String> estimateGas() async {
    try {
      BigInt gas = await ethClient!.estimateGas();

      // Calc the estimate gas (amount of gas * gas price)
      var gasPrice = await getGasPrice();
      var calc = gas.toDouble() * gasPrice;

      // Convert double (may be is like 4.66578e-13 ) to string
      String result = NumberFormat("#.##########").format(calc);
      return result;
    } catch (e) {
      log('estimateGas -> error: $e');
      return '';
    }
  }

}