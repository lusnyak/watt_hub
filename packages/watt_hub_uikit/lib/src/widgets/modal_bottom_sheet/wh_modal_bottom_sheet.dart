import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:watt_hub_uikit/src/theme/watt_hub_colors.dart';

class WhModalBottomSheet {
  // Function to show the bottom sheet
  void showBottomSheet(BuildContext context, Widget content) {
    showModalBottomSheet(
      useSafeArea: true,
      isScrollControlled: true,
      barrierColor: WattHubColors.darkMoodColor.withOpacity(0.7),
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(29.0)),
      ),
      builder: (BuildContext context) {
        return SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min, // Prevent excessive height
            children: <Widget>[
              content
              // Your BottomSheet content here
            ],
          ),
        ).paddingSymmetric(horizontal: 20).paddingOnly(
              bottom: MediaQuery.of(context).viewInsets.bottom,
            );
      },
    );
  }
}
