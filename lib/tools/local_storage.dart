import 'package:awallet/grpc_services/common_service.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LocalStorage {
  static String userToken = "userToken";
  static String username = "username";
  static String password = "password";
  static String ethAddress = "ethAddress";
  static String ethPrivateKey = "privateKey";

  static String? getEthAddress() {
    return get("${ethAddress}_${CommonService.userId}");
  }

  static removeEthAddress() {
    remove("${ethAddress}_${CommonService.userId}");
  }

  static setEthAddress(String value) {
    save("${ethAddress}_${CommonService.userId}", value);
  }

  static String getEthPrivateKey() {
    var temp = get("${ethPrivateKey}_${CommonService.userId}");
    temp ??= "";
    return temp;
  }

  static setEthPrivateKey(String value) {
    save("${ethPrivateKey}_${CommonService.userId}", value);
  }

  static SharedPreferences? prefs;

  static Future<bool> initSP() async {
    if (prefs != null) {
      return true;
    }
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
