import 'package:flutter/material.dart';
import 'package:watt_hub_uikit/watt_hub_uikit.dart';

class ProfileMenuDivider extends StatelessWidget {
  const ProfileMenuDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return const Divider(
      height: 1,
      thickness: 2,
      indent: 0,
      endIndent: 0,
      color: WattHubColors.grayColor,
    ).paddingSymmetric(vertical: 10);
  }
}
