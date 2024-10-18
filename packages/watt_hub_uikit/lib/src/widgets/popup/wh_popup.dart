import 'package:flutter/material.dart';

import '../../../watt_hub_uikit.dart';

class WHPopup extends StatelessWidget {
  const WHPopup({
    super.key,
    required this.image,
     required this.title,
     required this.subTitle,
  });

  final String image;
  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Image.asset(
        image,
        width: 100.sp,
        height: 200.sp,
        fit: BoxFit.fill,
      ),
      content: Column(
        children: [
          Text(
            title,
            style: body16SemiBoldTextStyle.copyWith(
                color: WattHubColors.primaryGreenColor),
            textAlign: TextAlign.center,
          ),
          Text(
            subTitle,
            // ,
            textAlign: TextAlign.center,
            style: body14RegularTextStyle,
          ),
        ],
      ),
      insetPadding: EdgeInsets.symmetric(horizontal: 20.sp, vertical: 70.sp),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(50.sp))),
      actions: <Widget>[
        Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            WHElevatedButton.primary(
              title: "Enable Location",
              shadow: false,
            ).paddingAll(8.h),
            WHElevatedButton.secondary(
              title: "Cancel",
            ).paddingAll(8.h),
          ],
        ).paddingAll(8.h),
      ],

      actionsPadding: EdgeInsets.symmetric(horizontal: 20.sp),
      contentPadding: EdgeInsets.zero,
      backgroundColor: Colors.white,
      // shape: const CircleBorder(),
    ).paddingAll(20.sp);
  }
}
