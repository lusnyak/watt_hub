import 'package:flutter/material.dart';
import 'package:watt_hub_uikit/watt_hub_uikit.dart';

ButtonStyle get primaryElevatedButtonStyle => const ButtonStyle(
      backgroundColor: WidgetStatePropertyAll(WattHubColors.primaryGreenColor),
      foregroundColor: WidgetStatePropertyAll(WattHubColors.whiteColor),
      shadowColor: WidgetStatePropertyAll(WattHubColors.primaryLightGreenColor),
      elevation: WidgetStatePropertyAll(6),
    );

ButtonStyle get secondaryElevatedButtonStyle => const ButtonStyle(
      backgroundColor:
          WidgetStatePropertyAll(WattHubColors.primaryLightGreenColor),
      foregroundColor: WidgetStatePropertyAll(WattHubColors.primaryGreenColor),
      elevation: WidgetStatePropertyAll(0),
    );

ButtonStyle get outlinedButtonStyle => ButtonStyle(
    side: WidgetStateProperty.all(const BorderSide(
        color: WattHubColors.primaryGreenColor,
        width: 1.0,
        style: BorderStyle.solid)));

ButtonStyle get primaryIconButtonStyle => const ButtonStyle(
      backgroundColor: WidgetStatePropertyAll(WattHubColors.primaryGreenColor),
      shadowColor: WidgetStatePropertyAll(WattHubColors.primaryLightGreenColor),
      elevation: WidgetStatePropertyAll(6),
    );

ButtonStyle get secondaryIconButtonStyle => const ButtonStyle(
      backgroundColor: WidgetStatePropertyAll(WattHubColors.grayColor),
    );

ElevatedButtonThemeData get elevatedButtonStyle =>
    ElevatedButtonThemeData(style: primaryElevatedButtonStyle);
