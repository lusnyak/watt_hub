import 'package:flutter/material.dart';
import 'package:watt_hub_uikit/watt_hub_uikit.dart';

ElevatedButtonThemeData get elevatedButtonStyle =>
    const ElevatedButtonThemeData(
      style: ButtonStyle(
        surfaceTintColor: WidgetStatePropertyAll(WattHubColors.primaryGreenColor),
        foregroundColor: WidgetStatePropertyAll(WattHubColors.primaryGreenColor),
      ),
    );
