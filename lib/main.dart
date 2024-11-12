import 'package:flutter/material.dart';
import 'package:watt_hub/config/locator/service_locator.dart';
import 'package:watt_hub/watt_hub_app.dart';
import 'package:watt_hub_uikit/watt_hub_uikit.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  configureDependencies();
  supportImagePickerPlatformOptions();
  runApp(WattHubApp());
}
