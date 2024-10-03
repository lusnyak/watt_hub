import 'package:flutter/material.dart';
import 'package:watt_hub/config/locator/service_locator.dart';
import 'package:watt_hub/watt_hub_app.dart';

void main() {
  configureDependencies();
  runApp(WattHubApp());
}
