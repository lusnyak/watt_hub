import 'package:flutter/material.dart';
import 'package:watt_hub_uikit/watt_hub_uikit.dart';

ButtonStyle get primaryElevatedButtonStyle => const ButtonStyle(
      backgroundColor: WidgetStatePropertyAll(WattHubColors.primaryGreenColor),
      foregroundColor: WidgetStatePropertyAll(WattHubColors.whiteColor),
      elevation: WidgetStatePropertyAll(0),
    );

ButtonStyle get secondaryElevatedButtonStyle => const ButtonStyle(
      backgroundColor: WidgetStatePropertyAll(
          WattHubColors.primaryLightGreenColor),
      foregroundColor:
           WidgetStatePropertyAll(WattHubColors.primaryGreenColor),
      elevation:  WidgetStatePropertyAll(0),
    );

ElevatedButtonThemeData get elevatedButtonStyle =>
    ElevatedButtonThemeData(style: primaryElevatedButtonStyle);
