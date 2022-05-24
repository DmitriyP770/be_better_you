import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefs {
  static final Future<SharedPreferences> _prefs =
      SharedPreferences.getInstance();

  static void setCurrentWeight(String key, double weight) async {
    final SharedPreferences prefs = await _prefs;
    prefs.setDouble(key, weight);
  }

  static void setGoalWeight(String key, double weight) async {
    final SharedPreferences prefs = await _prefs;
    prefs.setDouble(key, weight);
  }

  static void setHeight(String key, double height) async {
    final SharedPreferences prefs = await _prefs;
    prefs.setDouble(key, height);
  }

  static void setGender(String key, gender) async {
    final SharedPreferences prefs = await _prefs;
    prefs.setString(key, gender);
  }
}
