import 'package:flutter/material.dart';
import 'package:watt_hub_uikit/watt_hub_uikit.dart';

class WHChip extends StatelessWidget {
  const WHChip({
    super.key,
    this.label,
    this.backgroundColor,
    this.onDeleted,
  });

  final String? label;
  final Color? backgroundColor;
  final Function()? onDeleted;

  @override
  Widget build(BuildContext context) {
    return Chip(
      padding: EdgeInsets.zero,
      backgroundColor: backgroundColor,
      side: BorderSide(color: backgroundColor ?? WattHubColors.whiteColor),
      label: Text(
        label ?? '',
        style: body10RegularTextStyle.copyWith(color: WattHubColors.whiteColor),
      ),
      onDeleted: onDeleted,
    );
  }
}
