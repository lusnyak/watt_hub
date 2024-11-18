import 'package:flutter/material.dart';
import 'package:watt_hub_uikit/watt_hub_uikit.dart';

class WhCircleAvatar extends StatelessWidget {
  const WhCircleAvatar({
    super.key,
    this.width,
    this.height,
    this.iconSize,
    this.image,
  });

  final double? width;
  final double? height;
  final double? iconSize;
  final String? image;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width ?? 60.r,
      height: height ?? 60.r,
      decoration: BoxDecoration(
        color: WattHubColors.primaryLightGreenColor1,
        image:
            DecorationImage(image: AssetImage(image ?? ''), fit: BoxFit.cover),
        shape: BoxShape.circle,
      ),
      child: image != null
          ? nil
          : Icon(
              Icons.person,
              color: WattHubColors.primaryGreenColor,
              size: iconSize ?? 32.r,
            ),
    );
  }
}
