import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import 'package:watt_hub_uikit/watt_hub_uikit.dart';

PinTheme get defaultPinTheme => PinTheme(
      width: 56,
      height: 56,
      textStyle: const TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w600,
      ),
      decoration: BoxDecoration(
        border: Border.all(
          color: const Color.fromRGBO(234, 239, 243, 1),
        ),
        color: WattHubColors.grayColor,
        borderRadius: BorderRadius.circular(20),
      ),
    );
