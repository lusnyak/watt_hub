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
            textAlign: TextAlign.center,
            style: body14RegularTextStyle,
          ),
        ],
      ),
      insetPadding: EdgeInsets.symmetric(horizontal: 20.sp, vertical: 70.sp),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(50.sp))),
      actions: <Widget>[
        if (confirmButtonTitle != null && cancelButtonTitle != null)
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              WHElevatedButton.primary(
                title: confirmButtonTitle ?? "",
                shadow: false,
              ).paddingAll(8.h),
              WHElevatedButton.secondary(
                title: cancelButtonTitle ?? "",
              ).paddingAll(8.h),
            ],
          ).paddingAll(8.h),
        if (cancelButtonTitle == null && confirmButtonTitle != null)
          WHElevatedButton.primary(
            title: confirmButtonTitle ?? "",
            shadow: false,
          ).toCenter().paddingAll(20.h),
        if (cancelButtonTitle == null && confirmButtonTitle == null)
          const Center(
            child: CircularProgressIndicator(),
          ).paddingAll(20.sp),
      ],

      actionsPadding: EdgeInsets.symmetric(horizontal: 20.sp),
      contentPadding: EdgeInsets.zero,
      backgroundColor: Colors.white,
      // shape: const CircleBorder(),
    ).paddingAll(20.sp);
  }
}
