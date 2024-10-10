import 'package:flutter/material.dart';
import 'package:watt_hub_uikit/src/theme/watt_input_decorations.dart';
import 'package:watt_hub_uikit/watt_hub_uikit.dart';

ThemeData get lightTheme => ThemeData(
      colorScheme: const ColorScheme.light(
          primary: WattHubColors.primaryGreenColor,
          secondary: WattHubColors.primaryLightGreenColor),
      primaryColor: WattHubColors.primaryGreenColor,
      elevatedButtonTheme: elevatedButtonStyle,
      inputDecorationTheme: inputDecorationTheme,
      appBarTheme: const AppBarTheme(
        backgroundColor: Colors.transparent,
      ),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        shape: StadiumBorder(),
      ),
    );

/// TODO: - dark theme property

ThemeData get darkTheme => ThemeData.dark();
