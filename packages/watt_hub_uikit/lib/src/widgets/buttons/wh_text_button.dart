import 'package:flutter/material.dart';
import 'package:watt_hub_uikit/src/theme/theme.dart';

class WHTextButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color color;



  // Private constructor
  const WHTextButton._({
    required this.text,
    required this.onPressed,
    required this.color,

  });

  // Factory constructor
  factory WHTextButton.create({
    required String text,
    required VoidCallback onPressed,
    required Color color
  }) {
    return WHTextButton._(
      text: text,
      onPressed: onPressed,
      color: color,

    );
  }

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(

        foregroundColor: WattHubColors.primaryGreenColor,



      ),
      child: Text(text),
    );
  }
}
