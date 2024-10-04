import 'package:flutter/material.dart';
import 'package:watt_hub_uikit/watt_hub_uikit.dart';

ThemeData get lightTheme => ThemeData(
      colorScheme: const ColorScheme.light(
          primary: WattHubColors.primaryGreenColor,
          secondary: WattHubColors.primaryLightGreenColor),
      primaryColor: WattHubColors.primaryGreenColor,
      elevatedButtonTheme: elevatedButtonStyle,

    );

/// TODO: - dark theme property
