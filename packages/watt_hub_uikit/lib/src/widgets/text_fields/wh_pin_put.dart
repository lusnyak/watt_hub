import 'package:flutter/material.dart';
import 'package:watt_hub_uikit/src/theme/watt_hub_pin_put_styles.dart';
import 'package:watt_hub_uikit/watt_hub_uikit.dart';

class WHPinPut extends StatelessWidget {
  const WHPinPut({
    super.key,
    this.onCompleted,
    this.onChanged,
  });

  final ValueChanged<String>? onCompleted;
  final ValueChanged<String>? onChanged;

  @override
  Widget build(BuildContext context) {
    return Pinput(
      defaultPinTheme: defaultPinTheme,
      focusedPinTheme: defaultPinTheme.copyDecorationWith(
        border: Border.all(color: WattHubColors.primaryGreenColor),
        color: WattHubColors.primaryLightGreenColor,
        borderRadius: BorderRadius.circular(8.r),
      ),
      onChanged: onChanged,
      onCompleted: onCompleted,
      onTapOutside: (evt) => FocusScope.of(context).unfocus(),
    );
  }
}
