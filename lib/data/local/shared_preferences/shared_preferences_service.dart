import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesService {
  static const String onBoardingLaunchKey = "onBoardingLaunch";
  static const String selectedFilterConnectorIdKey =
      "selectedFilterConnectorIdKey";
  static const String selectedFilterCarIdKey = "selectedFilterCarIdKey";
  static const String filterRatingKey = "filterRatingKey";

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

  int? selectedFilterConnectorId() => _sharedPrefs
      ?.getInt(SharedPreferencesService.selectedFilterConnectorIdKey);

  setSelectedFilterConnectorId(int value) async => await _sharedPrefs?.setInt(
      SharedPreferencesService.selectedFilterConnectorIdKey, value);

  int? selectedFilterCarId() =>
      _sharedPrefs?.getInt(SharedPreferencesService.selectedFilterCarIdKey);

  setSelectedFilterCarId(int value) async => await _sharedPrefs?.setInt(
      SharedPreferencesService.selectedFilterCarIdKey, value);

  double? filterRating() =>
      _sharedPrefs?.getDouble(SharedPreferencesService.filterRatingKey);

  setFilterRating(double value) async => await _sharedPrefs?.setDouble(
      SharedPreferencesService.filterRatingKey, value);

  deleteSelectedFilterConnectorId() async => await _sharedPrefs
      ?.remove(SharedPreferencesService.selectedFilterConnectorIdKey);

  deleteSelectedFilterCarId() async => await _sharedPrefs
      ?.remove(SharedPreferencesService.selectedFilterCarIdKey);

  deleteSelectedFilterRating() async =>
      await _sharedPrefs?.remove(SharedPreferencesService.filterRatingKey);
}
