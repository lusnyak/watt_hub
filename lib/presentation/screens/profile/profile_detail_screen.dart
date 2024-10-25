import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'package:watt_hub_uikit/watt_hub_uikit.dart';

@RoutePage()
class ProfileDetailScreen extends StatelessWidget {
  const ProfileDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Personal Info'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          const Icon(Icons.mode_edit_outlined).paddingSymmetric(horizontal: 20)
        ],
      ),
      body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(100), // Makes the image round
              child: Image.asset(
                WattHubAssets.images.profileImage.keyName,
                width: 200,
                height: 200,
                fit: BoxFit.cover, // Ensures the image fills the container
              ),
            ).alignAtCenter().paddingSymmetric(vertical: 10),
            WHTextField.singleLine(label: "Full Name", hintText: "John Joe")
                .paddingOnly(
              bottom: 10,
            ),
            WHTextField.singleLine(
                    label: "Phone Number", hintText: "+374 93123456")
                .paddingOnly(bottom: 10),
          ]).paddingSymmetric(horizontal: 24, vertical: 20),
    );
  }
}
