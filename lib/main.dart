import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:watt_hub/config/locator/service_locator.dart';
import 'package:watt_hub/data/local/filter_storage/filter_storage_impl.dart';
import 'package:watt_hub/watt_hub_app.dart';
import 'package:watt_hub_uikit/watt_hub_uikit.dart';
import 'data/local/shared_preferences/shared_preferences_service.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  configureDependencies();
  supportImagePickerPlatformOptions();
  runApp(WattHubApp());
}
