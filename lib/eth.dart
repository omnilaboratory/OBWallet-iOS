
import 'dart:math' as math;
import 'dart:developer';
import 'package:awallet/grpc_services/user_service.dart';
import 'package:awallet/tools/global_params.dart';
import 'package:awallet/tools/local_storage.dart';
import 'package:decimal/decimal.dart';
import 'package:flutter/cupertino.dart';
import 'package:intl/intl.dart';
import 'package:web3dart/web3dart.dart';
import 'package:http/http.dart';
import 'bean/enum_eth_key.dart';
import 'contract_abis/USDT.g.dart';

class Eth {

  // static String apiUrl = "https://eth-mainnet.g.alchemy.com/v2/JWXQeMFoFECvkbukMCi5GGiEMdmQb3Ch";
  // static String apiUrl = "https://eth-goerli.g.alchemy.com/v2/JWXQeMFoFECvkbukMCi5GGiEMdmQb3Ch";

  // static String goerliContractOfUSDT = '0xC2C527C0CACF457746Bd31B2a698Fe89de2b6d49';
  // static String mainnetContractOfUSDT = '0xdAC17F958D2ee523a2206206994597C13D831ec7';
  // static String contractOfUSDC = '0xA0b86991c6218b36c1d19D4a2e9Eb0cE3606eB48';

  static Web3Client? ethClient;

  static initWeb3Client() {
    ethClient = Web3Client(GlobalParams.dataInNetwork[GlobalParams.currNetwork]![EnumEthKey.apiUrl]!, Client());
    log('ethClient -> $ethClient');
  }

  static getCredentials() {
    var privateKey  = LocalStorage.getEthPrivateKey();
    var credentials = EthPrivateKey.fromHex(privateKey);
    return credentials;
  }

  /// Generate a new eth address
  static Future<String> genEthAddress(BuildContext context) async {
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
      LocalStorage.setEthAddress(address);
      LocalStorage.setEthPrivateKey(privateKey);
      UserService.getInstance().updateUser(context,address);
      return address;
    } catch (e) {
      log('genEthAddress -> error: $e');
      return '';
    }
  }

  /// Get currently ETH account (address)
  static String getEthAccount() {
    try {
      var result = LocalStorage.getEthAddress()!;
      return result;
    } catch (e) {
      log('getEthAccount -> error: $e');
      return '';
    }
  }

  /// Get the private key of currently ETH account (address)
  static String getPrivateKeyOfEthAccount() {
    try {
      var result = LocalStorage.getEthPrivateKey();
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
      EthereumAddress contract = EthereumAddress.fromHex(GlobalParams.dataInNetwork[GlobalParams.currNetwork]![EnumEthKey.usdt]!);
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
      EthereumAddress contract = EthereumAddress.fromHex(GlobalParams.dataInNetwork[GlobalParams.currNetwork]![EnumEthKey.usdc]!);
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
      // The ETH has 18 decimals, so has to process for BigInt with the code.
      String toAmount  = amount.toStringAsFixed(15);  // double type has max 15 decimals
      Decimal baseVal  = Decimal.parse(toAmount);
      Decimal decimals = Decimal.parse('1000000000000000000'); // 18 decimals
      BigInt weiAmount = (baseVal * decimals).toBigInt();

      var response = await ethClient!.sendTransaction(
        getCredentials(),
        Transaction(
          to:    EthereumAddress.fromHex(toAddress),
          value: EtherAmount.fromBigInt(EtherUnit.wei, weiAmount),
        ),
        chainId: GlobalParams.currNetwork.chainId  // Goerli testnet - will be mainnet(1)
      );

      return response;
    } catch (e) {
      log('sendEthTo -> error: $e');
      return '';
    }
  }

  /// Sending USDT to an address
  static Future<String> sendUsdtTo(String toAddress, double amount) async {
    try {
      EthereumAddress contract = EthereumAddress.fromHex(GlobalParams.dataInNetwork[GlobalParams.currNetwork]![EnumEthKey.usdt]!);
      EthereumAddress ethAddr  = EthereumAddress.fromHex(toAddress);

      // The USDT contract has 6 decimals, so has to process for BigInt with the code.
      String toAmount  = amount.toStringAsFixed(6);
      Decimal baseVal  = Decimal.parse(toAmount);
      Decimal decimals = Decimal.parse('1000000'); // 6 decimals
      BigInt value     = (baseVal * decimals).toBigInt();

      var usdt     = USDT(address: contract, client: ethClient!);
      var response = await usdt.transfer(ethAddr, value, credentials: getCredentials());
      return response;
    } catch (e) {
      log('sendUsdtTo -> error: $e');
      return '';
    }
  }

  /// Sending USDC to an address
  static Future<String> sendUsdcTo(String toAddress, double amount) async {
    try {
      EthereumAddress contract = EthereumAddress.fromHex(GlobalParams.dataInNetwork[GlobalParams.currNetwork]![EnumEthKey.usdc]!);
      EthereumAddress ethAddr  = EthereumAddress.fromHex(toAddress);

      // The USDC contract has 6 decimals, so has to process for BigInt with the code.
      String toAmount  = amount.toStringAsFixed(6);
      Decimal baseVal  = Decimal.parse(toAmount);
      Decimal decimals = Decimal.parse('1000000'); // 6 decimals
      BigInt value     = (baseVal * decimals).toBigInt();

      var usdc     = USDT(address: contract, client: ethClient!);
      var response = await usdc.transfer(ethAddr, value, credentials: getCredentials());
      return response;
    } catch (e) {
      log('sendUsdcTo -> error: $e');
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

  static bool validateAddress(String address) {
    try {
      EthereumAddress.fromHex(address);
      return true;
    } catch (e) {
      log('Invalid address');
    }
    return false;
  }
}