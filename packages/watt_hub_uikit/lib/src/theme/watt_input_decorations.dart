import 'package:flutter/material.dart';
import 'package:watt_hub_uikit/src/theme/watt_hub_border_styles.dart';
import 'package:watt_hub_uikit/watt_hub_uikit.dart';

InputDecoration get searchInputDecoration => const InputDecoration();

InputDecoration get mainInputDecoration => InputDecoration(
      alignLabelWithHint: false,
      hintStyle: body16RegularTextStyle.copyWith(
        color: WattHubColors.lighterGrayColor,
      ),
      labelStyle: const TextStyle(
        color: WattHubColors.primaryBlackColor,
      ),
      enabledBorder: underLineInputBorder,
      errorStyle:
          body14RegularTextStyle.copyWith(color: WattHubColors.redColor),
    );

 InputDecorationTheme get inputDecorationTheme => InputDecorationTheme(
      alignLabelWithHint: false,
      hintStyle: body16RegularTextStyle.copyWith(
        color: WattHubColors.lighterGrayColor,
      ),
      labelStyle: const TextStyle(
        color: WattHubColors.primaryBlackColor,
      ),
      enabledBorder: underLineInputBorder,
    );
