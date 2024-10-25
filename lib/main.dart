import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:watt_hub/config/locator/service_locator.dart';
import 'package:watt_hub/data/local/filter_storage/filter_storage_impl.dart';
// import 'package:watt_hub/data/local/token_storage/token_storage.dart';
import 'package:watt_hub/watt_hub_app.dart';
import 'data/local/shared_preferences/shared_preferences_service.dart';
import 'package:watt_hub_uikit/watt_hub_uikit.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await GetIt.I.reset();
  configureDependencies();
  supportImagePickerPlatformOptions();
  runApp(WattHubApp());
}
