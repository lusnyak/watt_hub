import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesService {
  static const String onBoardingLaunchKey = "onBoardingLaunch";

  SharedPreferencesService._();

  static SharedPreferencesService instance = SharedPreferencesService._();

  static SharedPreferences? _sharedPrefs;

  getSharedInstance() async {
    _sharedPrefs ??= await SharedPreferences.getInstance();
  }

  bool onBoardingLaunch() =>
      _sharedPrefs?.getBool(SharedPreferencesService.onBoardingLaunchKey) ??
          false;

  setOnBoardingLaunch(bool value) async => await _sharedPrefs?.setBool(
      SharedPreferencesService.onBoardingLaunchKey, value);
}
