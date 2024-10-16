import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:watt_hub_uikit/src/theme/watt_input_decorations.dart';
import 'package:watt_hub_uikit/watt_hub_uikit.dart';

ThemeData get lightTheme => ThemeData(
    textTheme: GoogleFonts.urbanistTextTheme(),
    colorScheme: const ColorScheme.light(
      primary: WattHubColors.primaryGreenColor,
      secondary: WattHubColors.primaryLightGreenColor,
    ),
    primaryColor: WattHubColors.primaryGreenColor,
    elevatedButtonTheme: elevatedButtonStyle,
    inputDecorationTheme: inputDecorationTheme,
    dividerTheme: const DividerThemeData(color: WattHubColors.grayColor));

/// TODO: - dark theme property

ThemeData get darkTheme => ThemeData.dark();
