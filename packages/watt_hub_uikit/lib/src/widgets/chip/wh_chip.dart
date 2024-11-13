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
  final VoidCallback? onDeleted;

  @override
  Widget build(BuildContext context) {
    return Chip(
      labelPadding: EdgeInsets.zero,
      deleteIcon: const Icon(Icons.close).paddingOnly(left: 2.w),
      backgroundColor: backgroundColor,
      side: BorderSide(color: backgroundColor ?? WattHubColors.whiteColor),
      label: Text(label ?? ''),
      onDeleted: onDeleted,
      visualDensity: VisualDensity.compact,
    );
  }
}
