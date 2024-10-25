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
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
      contentPadding: const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
      onTap: onTap,
      title: Text(title,
          style: const TextStyle(
            fontSize: 18,
          )),
      leading: ClipRRect(
        borderRadius: BorderRadius.circular(100), // Makes the image round
        child: Icon(
          iconLeading,
          size: 40,
        ),
      ),
      trailing: Icon(
        iconTrailing,
        size: 30,
      ),
    );
  }
}
