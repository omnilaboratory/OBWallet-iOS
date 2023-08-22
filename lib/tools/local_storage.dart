import 'package:shared_preferences/shared_preferences.dart';

class LocalStorage {
  static String ethAddress= "ethAddress";
  static String ethPrivateKey= "private_key";

  static SharedPreferences? prefs;

  static Future<bool> initSP() async {
    prefs = await SharedPreferences.getInstance();
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
