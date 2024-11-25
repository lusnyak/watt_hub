import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:watt_hub_uikit/src/theme/watt_input_decorations.dart';
import 'package:watt_hub_uikit/watt_hub_uikit.dart';

ThemeData get lightTheme => ThemeData(
      textTheme: GoogleFonts.urbanistTextTheme(),
      colorScheme: const ColorScheme.light(
        primary: WattHubColors.primaryGreenColor,
        secondary: WattHubColors.primaryLightGreenColor,
      ),
      splashColor: WattHubColors.primaryLightGreenColor,
      primaryColor: WattHubColors.primaryGreenColor,
      elevatedButtonTheme: elevatedButtonStyle,
      inputDecorationTheme: inputDecorationTheme,
      dividerTheme: const DividerThemeData(color: WattHubColors.lightGrayColor),
      appBarTheme: AppBarTheme(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        surfaceTintColor: Colors.transparent,
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarIconBrightness: Brightness.dark,
        ),
        titleTextStyle: body18SemiBoldTextStyle,
      ),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        shape: StadiumBorder(),
      ),
      sliderTheme: const SliderThemeData(
        inactiveTrackColor: WattHubColors.primaryLightGreenColor,
        inactiveTickMarkColor: WattHubColors.primaryGreenColor,
        thumbColor: WattHubColors.primaryGreenColor,
      ),
      cardTheme: CardTheme(
        elevation: 1,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.r),
        ),
      ),
      snackBarTheme: SnackBarThemeData(
        backgroundColor: WattHubColors.redColor,
        contentTextStyle: body14RegularTextStyle.copyWith(
          color: WattHubColors.whiteColor,
        ),
      ),
      chipTheme: ChipThemeData(
        // shape: const StadiumBorder(),
        labelPadding: EdgeInsets.zero,
        side: const BorderSide(width: 0.0, color: WattHubColors.lightGray),
        deleteIconColor: WattHubColors.whiteColor,
        backgroundColor: WattHubColors.lightGray,
        labelStyle: body12RegularTextStyle.copyWith(
          color: WattHubColors.whiteColor,
        ),
      ),
      listTileTheme: const ListTileThemeData(
        selectedColor: WattHubColors.primaryLightGreenColor,
      ),
    );

/// TODO: - dark theme property

ThemeData get darkTheme => ThemeData.dark();
