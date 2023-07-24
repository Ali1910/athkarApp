import 'package:shared_preferences/shared_preferences.dart';

class sharedhelper {
  static late SharedPreferences preferences;
  static sharedPreferencesinit() async {
    preferences = await SharedPreferences.getInstance();
  }

  static Future<bool> putdata(String key, bool value) async {
    return await preferences.setBool(key, value);
  }

  static getdata(String key) {
    return preferences.getBool(key);
  }
}
