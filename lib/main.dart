import 'package:flutter/material.dart';
import 'package:watt_hub/config/locator/service_locator.dart';
import 'package:watt_hub/watt_hub_app.dart';
import 'data/local/shared_preferences/shared_preferences_service.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SharedPreferencesService.instance.getSharedInstance();
  configureDependencies();

  runApp(WattHubApp());
}
