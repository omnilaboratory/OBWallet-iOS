import 'package:awallet/bean/enum_network_type.dart';
import 'package:awallet/bean/token_info.dart';

class GlobalParams {
  static EnumNetworkType currNetwork = EnumNetworkType.goerli;

  static int grpcTimeout = 5;

  static Map<EnumNetworkType, Map<String, String>> dataInNetwork = Map.from({
    EnumNetworkType.mainnet: Map.from({
      "apiUrl":
          "https://eth-mainnet.g.alchemy.com/v2/JWXQeMFoFECvkbukMCi5GGiEMdmQb3Ch",
      "usdt": "0xdAC17F958D2ee523a2206206994597C13D831ec7",
      "usdc": "0xA0b86991c6218b36c1d19D4a2e9Eb0cE3606eB48",
    }),
    EnumNetworkType.goerli: Map.from({
      "apiUrl":
          "https://eth-goerli.g.alchemy.com/v2/JWXQeMFoFECvkbukMCi5GGiEMdmQb3Ch",
      "usdt": "0xC2C527C0CACF457746Bd31B2a698Fe89de2b6d49",
      "usdc": "0xA0b86991c6218b36c1d19D4a2e9Eb0cE3606eB48",
    }),
  });

  static List<TokenInfo> ethTokenList = [
    TokenInfo(name: "ETH", iconUrl: 'asset/images/icon_eth_logo.png'),
    TokenInfo(name: "USDT", iconUrl: 'asset/images/icon_tether.png'),
    // TokenInfo(name: "USDC", iconUrl: 'asset/images/icon_tether.png'),
  ];
  static List<TokenInfo> currencyList = [
    TokenInfo(name: "USD", iconUrl: 'asset/images/icon_dollar.png')
  ];
}
