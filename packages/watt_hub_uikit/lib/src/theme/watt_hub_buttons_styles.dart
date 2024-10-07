import 'package:flutter/material.dart';
import 'package:watt_hub_uikit/watt_hub_uikit.dart';

/// TODO: - explore more properties for button styles, for all types
///  shape, fixedSize, padding, alignment
///
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

ButtonStyle get outlinedButtonStyle => const ButtonStyle(
      foregroundColor: WidgetStatePropertyAll(WattHubColors.primaryGreenColor),
      side: WidgetStatePropertyAll(
        BorderSide(
          color: WattHubColors.primaryGreenColor,
          width: 1.0,
          style: BorderStyle.solid,
        ),
      ),
    );

ButtonStyle get primaryIconButtonStyle => const ButtonStyle(
      foregroundColor: WidgetStatePropertyAll(WattHubColors.whiteColor),
      backgroundColor: WidgetStatePropertyAll(WattHubColors.primaryGreenColor),
      shadowColor: WidgetStatePropertyAll(WattHubColors.primaryLightGreenColor),
      elevation: WidgetStatePropertyAll(6),
    );


ButtonStyle get secondaryIconButtonStyle => const ButtonStyle(
      foregroundColor: WidgetStatePropertyAll(WattHubColors.primaryGreenColor),
      backgroundColor: WidgetStatePropertyAll(WattHubColors.grayColor),
      shape: WidgetStatePropertyAll(CircleBorder()),
    );

ElevatedButtonThemeData get elevatedButtonStyle =>
    ElevatedButtonThemeData(style: primaryElevatedButtonStyle);
