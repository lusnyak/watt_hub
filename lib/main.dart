import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:watt_hub/config/locator/service_locator.dart';
import 'package:watt_hub/watt_hub_app.dart';
import 'data/local/shared_preferences/shared_preferences_service.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SharedPreferencesService().init();
  await GetIt.I.reset();
  configureDependencies();
  runApp(WattHubApp());
}
