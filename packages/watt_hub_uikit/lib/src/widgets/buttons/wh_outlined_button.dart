import 'package:flutter/material.dart';
import 'package:watt_hub_uikit/src/theme/theme.dart';

class WHOutlinedButton extends StatelessWidget {
  const WHOutlinedButton({
    super.key,
    required this.title,
    this.onPressed,
  });

  final String title;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) => OutlinedButton(
        onPressed: onPressed,
        style: outlinedButtonStyle,
        child: Text(
          title,
          style: body16MediumTextStyle.copyWith(
            color: WattHubColors.primaryGreenColor,
          ),
        ),
      );
}
