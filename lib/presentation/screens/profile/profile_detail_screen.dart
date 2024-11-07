import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:watt_hub/utils/extensions/localization_extensions.dart';
import 'package:watt_hub_uikit/watt_hub_uikit.dart';

@RoutePage()
class ProfileDetailScreen extends StatelessWidget {
  const ProfileDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(context.localized.personalInfo),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          const Icon(Icons.mode_edit_outlined)
              .paddingSymmetric(horizontal: 20.w)
        ],
      ),
      body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: roundedBorder50, // Makes the image round
              child: Image.asset(
                WattHubAssets.images.profileImage.keyName,
                width: 200.w,
                height: 200.h,
                fit: BoxFit.cover, // Ensures the image fills the container
              ),
            ).alignAtCenter().paddingSymmetric(vertical: 10),
            WHTextField.singleLine(
                    label: context.localized.fullName,
                    hintText: context.localized.fullName)
                .paddingOnly(
              bottom: 10,
            ),
            WHTextField.singleLine(
                    label: context.localized.phone, hintText: "+374 93123456")
                .paddingOnly(bottom: 10),
          ]).paddingSymmetric(horizontal: 24, vertical: 20),
    );
  }
}
