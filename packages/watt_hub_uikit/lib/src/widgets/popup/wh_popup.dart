import 'package:flutter/material.dart';

import '../../../watt_hub_uikit.dart';

class WHPopup extends StatelessWidget {
  const WHPopup({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Image.asset(
        WattHubAssets.images.popupSuccessfulImg.keyName,
        width: 100.sp,
        height: 200.sp,
        fit: BoxFit.fill,
      ),
      content: Column(
        children: [
          Text(
            "Enable Location",
            style: body16SemiBoldTextStyle.copyWith(
                color: WattHubColors.primaryGreenColor),
            textAlign: TextAlign.center,
          ),
          Text(
            "We need access to you location to find EV charging station around you.",
            textAlign: TextAlign.center,
            style: body14MediumTextStyle,
          ),
        ],
      ),
      insetPadding: EdgeInsets.symmetric(horizontal: 20.sp, vertical: 70.sp),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(50.sp))),
      actions: <Widget>[
        WHElevatedButton.primary(title: "title"),
        20.w.widthBox,
        WHElevatedButton.secondary(title: "title"),
      ],

      actionsPadding: EdgeInsets.symmetric(horizontal: 20.sp),
      elevation: 24.0,
      contentPadding: EdgeInsets.zero,
      backgroundColor: Colors.white,
      // shape: const CircleBorder(),
    ).paddingAll(20.sp);
  }
}
