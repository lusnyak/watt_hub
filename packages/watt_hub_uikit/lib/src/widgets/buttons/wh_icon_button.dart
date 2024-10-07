import 'package:flutter/material.dart';

import '../../../watt_hub_uikit.dart';

class WHIconButton extends StatelessWidget {
  const WHIconButton._({
    required this.icon,
    this.onPressed,
    required this.style,
  });

  factory WHIconButton.primary({
    required Widget icon,
    VoidCallback? onPressed,
  }) =>
      WHIconButton._(
        icon: icon,
        style: primaryIconButtonStyle,
        onPressed: onPressed,
      );

  factory WHIconButton.secondary({
    required Widget icon,
    VoidCallback? onPressed,
  }) =>
      WHIconButton._(
        icon: icon,
        style: secondaryIconButtonStyle,
        onPressed: onPressed,
      );
  final Widget icon;
  final VoidCallback? onPressed;
  final ButtonStyle style;

  @override
  Widget build(BuildContext context) => IconButton(
        onPressed: onPressed,
        icon: SizedBox.fromSize(
          size: const Size.fromRadius(10),
          child: FittedBox(
            child: icon,
          ),
        ),
        style: style,
      );
}
