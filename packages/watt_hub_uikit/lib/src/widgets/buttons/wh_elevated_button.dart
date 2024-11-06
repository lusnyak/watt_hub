import 'package:flutter/material.dart';
import 'package:watt_hub_uikit/src/theme/theme.dart';

class WHElevatedButton extends StatelessWidget {
  const WHElevatedButton._({
    required this.title,
    this.textStyle,
    this.onPressed,
    required this.style,
    this.padding,
  });

  factory WHElevatedButton.primary({
    required String title,
    VoidCallback? onPressed,
    bool shadow = true,
    EdgeInsets? padding,
  }) =>
      WHElevatedButton._(
        title: title,
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
  }) =>
      WHElevatedButton._(
        title: title,
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
  final EdgeInsets? padding;

  @override
  Widget build(BuildContext context) => ElevatedButton(
        onPressed: onPressed,
        style: style,
        child: Text(
          title,
          style: textStyle,
        ),
      );
}
