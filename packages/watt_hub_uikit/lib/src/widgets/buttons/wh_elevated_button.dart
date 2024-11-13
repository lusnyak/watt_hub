import 'package:flutter/material.dart';
import 'package:watt_hub_uikit/src/theme/theme.dart';
import 'package:watt_hub_uikit/src/widgets/circular_spin/circular_spin.dart';

class WHElevatedButton extends StatelessWidget {
  const WHElevatedButton._({
    required this.title,
    this.textStyle,
    this.onPressed,
    required this.style,
    this.loading = false,
  });

  factory WHElevatedButton.primary({
    required String title,
    VoidCallback? onPressed,
    bool shadow = true,
    bool loading = false,
    EdgeInsets? padding,
  }) =>
      WHElevatedButton._(
        title: title,
        loading: loading,
        textStyle: body16MediumTextStyle.copyWith(
          color: WattHubColors.whiteColor,
        ),
        style: primaryElevatedButtonStyle.copyWith(
            elevation: WidgetStatePropertyAll(shadow ? 6 : 0),
            padding: WidgetStatePropertyAll(padding)),
        onPressed: onPressed,
      );

  factory WHElevatedButton.secondary({
    required String title,
    VoidCallback? onPressed,
    EdgeInsets? padding,
    bool loading = false,
  }) =>
      WHElevatedButton._(
        title: title,
        loading: loading,
        textStyle: body16MediumTextStyle.copyWith(
          color: WattHubColors.primaryGreenColor,
        ),
        style: secondaryElevatedButtonStyle.copyWith(
            padding: WidgetStatePropertyAll(padding)),
        onPressed: onPressed,
      );

  final String title;
  final TextStyle? textStyle;
  final VoidCallback? onPressed;
  final ButtonStyle style;
  final bool loading;

  @override
  Widget build(BuildContext context) => ElevatedButton(
        onPressed: onPressed,
        style: style,
        child: loading ? const WHCircularSpin(size: 24.0, color: WattHubColors.whiteColor,) : Text(
          title,
          style: textStyle,
          maxLines: 2,
        ),
      );
}
