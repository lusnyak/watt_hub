import 'package:flutter/material.dart';
import 'package:watt_hub_uikit/src/theme/watt_hub_pin_put_styles.dart';
import 'package:watt_hub_uikit/watt_hub_uikit.dart';

class WHPinPut extends StatelessWidget {
  const WHPinPut({
    super.key,
    this.onCompleted,
    this.onChanged,
    this.isError,
    required this.pinController,
  });

  final ValueChanged<String>? onCompleted;
  final ValueChanged<String>? onChanged;
  final bool? isError;
  final TextEditingController pinController;

  @override
  Widget build(BuildContext context) {
    return Pinput(
      controller: pinController,
      defaultPinTheme: defaultPinTheme.copyDecorationWith(
          border: isError != null && isError == false
              ? Border.all(color: WattHubColors.redColor)
              : Border.all(
                  color: WattHubColors.grayColor,
                )),
      focusedPinTheme: defaultPinTheme.copyDecorationWith(
        border: Border.all(color: WattHubColors.primaryGreenColor),
        color: WattHubColors.primaryLightGreenColor,
        borderRadius: BorderRadius.circular(8.r),
      ),
      length: 6,
      onChanged: onChanged,
      onCompleted: onCompleted,
      onTapOutside: (evt) => FocusScope.of(context).unfocus(),
    );
  }
}
