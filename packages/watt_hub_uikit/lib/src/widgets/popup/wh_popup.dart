import 'package:flutter/material.dart';

import '../../../watt_hub_uikit.dart';

class WHPopup extends StatelessWidget {
  const WHPopup({
    super.key,
    required this.image,
    required this.title,
    required this.subTitle,
    this.cancelButtonTitle,
    this.confirmButtonTitle,
  });

  final String image;
  final String title;
  final String subTitle;
  final String? cancelButtonTitle;
  final String? confirmButtonTitle;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Image.asset(
        image,
        width: 200.w,
        height: 200.h,
        fit: BoxFit.contain,
      ),
      content: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            title,
            style: body18SemiBoldTextStyle.copyWith(
                color: WattHubColors.primaryGreenColor),
            textAlign: TextAlign.center,
          ).paddingSymmetric(vertical: 8.h),
          Text(
            subTitle,
            textAlign: TextAlign.center,
            style: body14RegularTextStyle,
          ).paddingSymmetric(horizontal: 20.sp, vertical: 8.h),
        ],
      ),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(50.sp))),
      actions: <Widget>[
        if (confirmButtonTitle != null && cancelButtonTitle != null)
          Column(
            // crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.min,
            children: [
              WHElevatedButton.primary(
                title: confirmButtonTitle ?? "",
                shadow: false,
              ).paddingOnly(bottom: 8.sp),
              WHElevatedButton.secondary(
                title: cancelButtonTitle ?? "",
              ).paddingSymmetric(vertical: 8.sp),
            ],
          ).paddingAll(8.sp),
        if (cancelButtonTitle == null && confirmButtonTitle != null)
          SizedBox(
            width: double.infinity,
            child: WHElevatedButton.primary(
              title: confirmButtonTitle ?? "",
              shadow: false,
            ).paddingSymmetric(vertical: 20.sp),
          ).paddingAll(8.sp),
        if (cancelButtonTitle == null && confirmButtonTitle == null)
          const Center(
            child: WHCircularSpin(),
          ).paddingAll(20.sp),
      ],
      actionsPadding: EdgeInsets.symmetric(horizontal: 12.sp),
      contentPadding: EdgeInsets.zero,
      backgroundColor: Colors.white,
    ).paddingAll(20.sp);
  }
}
