import 'package:awallet/bean/enum_eth_key.dart';
import 'package:awallet/bean/enum_network_type.dart';
import 'package:awallet/bean/token_info.dart';
import 'package:event_bus/event_bus.dart';

int pageSize = 10;

class GlobalParams {

  static EventBus eventBus = EventBus();

  static EnumNetworkType currNetwork = EnumNetworkType.goerli;

  static int grpcTimeout = 30;

  static Map<EnumNetworkType, dynamic> dataInNetwork = Map.from({
    EnumNetworkType.mainnet: Map.from({
      EnumEthKey.apiUrl:
          "https://eth-mainnet.g.alchemy.com/v2/JWXQeMFoFECvkbukMCi5GGiEMdmQb3Ch",
      EnumEthKey.usdt: "0xdAC17F958D2ee523a2206206994597C13D831ec7",
      EnumEthKey.usdc: "0xA0b86991c6218b36c1d19D4a2e9Eb0cE3606eB48",
      EnumEthKey.nft: "",
    }),
    EnumNetworkType.goerli: Map.from({
      EnumEthKey.apiUrl:
          "https://eth-goerli.g.alchemy.com/v2/JWXQeMFoFECvkbukMCi5GGiEMdmQb3Ch",
      EnumEthKey.usdt: "0xC2C527C0CACF457746Bd31B2a698Fe89de2b6d49",
      EnumEthKey.usdc: "0xA0b86991c6218b36c1d19D4a2e9Eb0cE3606eB48",
      EnumEthKey.nft: "0x9db105d4427baa36895332d550ae00085a1cfcbc",
    }),
  });

  static List<TokenInfo> ethGoerliTokenList = [
    TokenInfo(name: "ETH", iconUrl: 'asset/images/icon_eth_logo.png'),
    TokenInfo(name: "USDT", iconUrl: 'asset/images/icon_tether.png'),
  ];
  static List<TokenInfo> ethMainnetTokenList = [
    TokenInfo(name: "ETH", iconUrl: 'asset/images/icon_eth_logo.png'),
    TokenInfo(name: "USDT", iconUrl: 'asset/images/icon_tether.png'),
    TokenInfo(name: "USDC", iconUrl: 'asset/images/icon_usdc_logo.png'),
  ];
  static List<TokenInfo> currencyList = [
    TokenInfo(name: "USD", iconUrl: 'asset/images/icon_dollar.png')
  ];
}
