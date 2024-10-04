import 'package:flutter/material.dart';
import 'package:watt_hub_uikit/src/theme/theme.dart';

class WHElevatedButton extends StatelessWidget {
  const WHElevatedButton._({
    required this.title,
    this.onPressed,
    required this.style,
  });

  factory WHElevatedButton.primary({
    required String title,
    VoidCallback? onPressed,
  }) =>
      WHElevatedButton._(
        title: title,
        style: primaryIconButtonStyle,
        onPressed: onPressed,
      );

  factory WHElevatedButton.secondary({
    required String title,
    VoidCallback? onPressed,
  }) =>
      WHElevatedButton._(
        title: title,
        style: secondaryElevatedButtonStyle,
        onPressed: onPressed,
      );

  final String title;
  final VoidCallback? onPressed;
  final ButtonStyle style;

  @override
  Widget build(BuildContext context) => ElevatedButton(
        onPressed: onPressed,
        style: style,
        child: Text(title),
      );
}
