import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:watt_hub/config/locator/service_locator.dart';
import 'package:watt_hub/watt_hub_app.dart';
import 'package:watt_hub_uikit/watt_hub_uikit.dart';

void main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  configureDependencies();
  supportImagePickerPlatformOptions();
  runApp(WattHubApp());
}
