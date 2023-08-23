
import 'dart:math' as math;
import 'dart:developer';
import 'package:awallet/tools/local_storage.dart';
import 'package:web3dart/web3dart.dart';
import 'package:http/http.dart';
import 'contract_abis/USDT.g.dart';

class Eth {

  static String apiUrlMainnet = "https://eth-mainnet.g.alchemy.com/v2/JWXQeMFoFECvkbukMCi5GGiEMdmQb3Ch";
  static String apiUrlGoerli = "https://eth-goerli.g.alchemy.com/v2/JWXQeMFoFECvkbukMCi5GGiEMdmQb3Ch";

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
      var httpClient = Client();
      var ethClient  = Web3Client(apiUrlGoerli, httpClient); // should be apiUrlMainnet

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
      var httpClient = Client();
      var ethClient  = Web3Client(apiUrlGoerli, httpClient); // should be apiUrlMainnet

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

  /// Get USDC balance of an Eth Address
  static Future<double> getBalanceOfUSDC(String address) async {
    try {
      var httpClient = Client();
      var ethClient  = Web3Client(apiUrlMainnet, httpClient);

      EthereumAddress contract = EthereumAddress.fromHex('0xA0b86991c6218b36c1d19D4a2e9Eb0cE3606eB48');
      EthereumAddress ethAddr  = EthereumAddress.fromHex(address);

      var usdc    = USDT(address: contract, client: ethClient);
      var balance = await usdc.balanceOf(ethAddr);

      // The USDC contract has 6 decimals, so has to process for BigInt with the code.
      double result = balance / BigInt.from(10).pow(6);
      return result;
    } catch (e) {
      log('getBalanceOfUSDC -> error: $e');
      return -1;
    }
  }

  /// Sending transactions
  static void sendTransaction() async {
    try {
      var httpClient = Client();
      var ethClient  = Web3Client(apiUrlGoerli, httpClient);

      var privateKey  = LocalStorage.get(LocalStorage.ethPrivateKey);
      var credentials = EthPrivateKey.fromHex(privateKey);

      double etherAmount = 0.00001;
      BigInt weiAmount = BigInt.from((etherAmount * 1000000000000000000).toInt());
      log('weiAmount -> $weiAmount');

      // BigInt gasAmount = BigInt.from((0.00000006 * 1000000000000000000).toInt());
      // log('gasAmount -> $gasAmount');

      var response = await ethClient.sendTransaction(
        credentials,
        Transaction(
          to: EthereumAddress.fromHex('0x8c56B81743BD38E222639e223A6b2500d259F521'),
          gasPrice: EtherAmount.fromInt(EtherUnit.gwei, 2),
          // gasPrice: EtherAmount.inWei(BigInt.one),
          // maxGas: 100000,
          value: EtherAmount.fromBigInt(EtherUnit.wei, weiAmount),
        ),
        chainId: 5
      );

      log('response -> $response');

    } catch (e) {
      log('sendTransaction -> error: $e');
    }
  }
}