import 'package:awallet/bean/token_info.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LocalStorage {
  static String ethAddress= "ethAddress";
  static String ethPrivateKey= "private_key";

  static SharedPreferences? prefs;

  static Map<String,String> ethTypeAndAddress= Map.from({
    "ETH":"0xD271f9d231b8107cB03F69e3a7Ca6234CAf96347",
    "USDT":"0xD271f9d231b8107cB03F69e3a7Ca6234CAf96347",
    "USDC":"0xD271f9d231b8107cB03F69e3a7Ca6234CAf96347",
  });
  static List<TokenInfo> ethTokenList= [
    TokenInfo(name: "ETH", iconUrl: 'asset/images/icon_eth_logo.png'),
    TokenInfo(name: "USDT", iconUrl: 'asset/images/icon_tether.png'),
    TokenInfo(name: "USDC", iconUrl: 'asset/images/icon_tether.png'),
  ];
  static List<TokenInfo> currencyList= [
    TokenInfo(name: "USD", iconUrl: 'asset/images/icon_tether.png')
  ];

  static Future<bool> initSP() async {
    prefs ??= await SharedPreferences.getInstance();
    return true;
  }

  static save(String key, String value) {
    prefs?.setString(key, value);
  }

  static get(String key) {
    return prefs?.get(key);
  }

  static remove(String key) {
    prefs?.remove(key);
  }
}
