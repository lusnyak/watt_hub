import 'package:flutter/material.dart';
import 'package:watt_hub_uikit/watt_hub_uikit.dart';

class ProfileMenuItem extends StatelessWidget {
  final String title;
  final IconData iconLeading;
  final IconData? iconTrailing;
  final VoidCallback? onTap;
  final Color? colorTile;
  const ProfileMenuItem(
      {super.key,
      required this.title,
      required this.iconLeading,
      required this.onTap,
      this.iconTrailing,
      this.colorTile});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      textColor: colorTile,
      iconColor: colorTile,
      splashColor: WattHubColors.primaryLightGreenColor,
      shape: roundedBorderShape14,
      contentPadding: paddingH10,
      onTap: onTap,
      title: Text(title, style: body16RegularTextStyle),
      leading: ClipRRect(
        borderRadius: roundedBorder50, // Makes the image round
        child: Icon(
          iconLeading,
          size: 40,
        ),
      ),
      trailing: Icon(
        iconTrailing,
      ),
    );
  }
}
