import 'package:flutter/material.dart';
import 'package:watt_hub/watt_hub_app.dart';
import 'data/services/shared_preferences_service.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SharedPreferencesService().init();
  runApp(WattHubApp());
}
