import 'package:flutter/material.dart';

import '../../../watt_hub_uikit.dart';

class WHIconButton extends StatelessWidget {
  const WHIconButton._({
    required this.icon,
    this.onPressed,
    required this.style,
    this.iconSize = 24.0,
  });

  factory WHIconButton.primary({
    required Widget icon,
    VoidCallback? onPressed,
    double? iconSize,
  }) =>
      WHIconButton._(
        icon: icon,
        style: primaryIconButtonStyle,
        onPressed: onPressed,
        iconSize: iconSize ?? 24.0,
      );

  factory WHIconButton.secondary({
    required Widget icon,
    VoidCallback? onPressed,
    double? iconSize,
  }) =>
      WHIconButton._(
        icon: icon,
        style: secondaryIconButtonStyle,
        onPressed: onPressed,
        iconSize: iconSize ?? 24.0,
      );

  final Widget icon;
  final VoidCallback? onPressed;
  final ButtonStyle style;
  final double iconSize;

  @override
  Widget build(BuildContext context) => IconButton(
        onPressed: onPressed,
        icon: icon,

        style: style.copyWith(iconSize: WidgetStatePropertyAll(iconSize)),
      );
}
