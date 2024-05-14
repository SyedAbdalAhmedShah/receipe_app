import 'package:shared_preferences/shared_preferences.dart';

class SharedPref {
  late SharedPreferences preferences;
  Future initializePrefrences() async {
    preferences = await SharedPreferences.getInstance();
  }
}
