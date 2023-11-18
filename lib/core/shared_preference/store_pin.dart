import 'package:shared_preferences/shared_preferences.dart';

Future<void> updateSharedPreference(String pinNomber) async {
  SharedPreferences pref = await SharedPreferences.getInstance();
  pref.setString("pin", pinNomber);
}
