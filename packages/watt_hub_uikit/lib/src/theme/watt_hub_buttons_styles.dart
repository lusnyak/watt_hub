import 'package:flutter/material.dart';
import 'package:watt_hub_uikit/watt_hub_uikit.dart';

/// TODO: - explore more properties for button styles, for all types
///  shape, fixedSize, padding, alignment
///
ButtonStyle get primaryElevatedButtonStyle => const ButtonStyle(
      backgroundColor: WidgetStatePropertyAll(WattHubColors.primaryGreenColor),
      foregroundColor: WidgetStatePropertyAll(WattHubColors.whiteColor),
      shadowColor: WidgetStatePropertyAll(WattHubColors.primaryLightGreenColor),
      shape: WidgetStatePropertyAll(StadiumBorder()),
      elevation: WidgetStatePropertyAll(6),
    );

ButtonStyle get secondaryElevatedButtonStyle => const ButtonStyle(
      backgroundColor:
          WidgetStatePropertyAll(WattHubColors.primaryLightGreenColor),
      foregroundColor: WidgetStatePropertyAll(WattHubColors.primaryGreenColor),
      shape: WidgetStatePropertyAll(StadiumBorder()),
      elevation: WidgetStatePropertyAll(0),
      // alignment: Alignment.center,
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
      shape: WidgetStatePropertyAll(StadiumBorder()),
      elevation: WidgetStatePropertyAll(0),
    );

ButtonStyle get primaryIconButtonStyle => ButtonStyle(
      backgroundColor:
          const WidgetStatePropertyAll(WattHubColors.primaryGreenColor),
      foregroundColor: const WidgetStatePropertyAll(WattHubColors.whiteColor),
      shadowColor:
          const WidgetStatePropertyAll(WattHubColors.primaryLightGreenColor),
      shape: const WidgetStatePropertyAll(CircleBorder()),
      elevation: const WidgetStatePropertyAll(6),
      alignment: Alignment.center,
      minimumSize: WidgetStatePropertyAll(Size.square(48.r)),
    );

ButtonStyle get secondaryIconButtonStyle => ButtonStyle(
      foregroundColor:
          const WidgetStatePropertyAll(WattHubColors.primaryGreenColor),
      backgroundColor: const WidgetStatePropertyAll(WattHubColors.grayColor),
      shape: const WidgetStatePropertyAll(CircleBorder()),
      elevation: const WidgetStatePropertyAll(0),
      alignment: Alignment.center,
      minimumSize: WidgetStatePropertyAll(Size.square(48.r)),
    );

ElevatedButtonThemeData get elevatedButtonStyle =>
    ElevatedButtonThemeData(style: primaryElevatedButtonStyle);
