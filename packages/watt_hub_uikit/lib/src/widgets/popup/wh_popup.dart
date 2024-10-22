import 'package:flutter/material.dart';

import '../../../watt_hub_uikit.dart';

class WHPopup {
  final BuildContext context;

  WHPopup.of(this.context);

  void show({
    required String image,
    required String title,
    required String subTitle,
    String? cancelButtonTitle,
    String? confirmButtonTitle,
    VoidCallback? onConfirmPressed,
    VoidCallback? onCancelPressed,
  }) {
    showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return _WHPopup(
          image: image,
          title: title,
          subTitle: subTitle,
          cancelButtonTitle: cancelButtonTitle,
          confirmButtonTitle: confirmButtonTitle,
          onConfirmPressed: onConfirmPressed,
          onCancelPressed: onCancelPressed,
        );
      },
    );
  }
}

class _WHPopup extends StatelessWidget {
  const _WHPopup({
    required this.image,
    required this.title,
    required this.subTitle,
    this.cancelButtonTitle,
    this.confirmButtonTitle,
    this.onConfirmPressed,
    this.onCancelPressed,
  });

  final String image;
  final String title;
  final String subTitle;
  final String? cancelButtonTitle;
  final String? confirmButtonTitle;
  final VoidCallback? onConfirmPressed;
  final VoidCallback? onCancelPressed;

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
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.min,
            children: [
              WHElevatedButton.primary(
                onPressed: onConfirmPressed,
                title: confirmButtonTitle ?? "",
                shadow: false,
              ).paddingOnly(bottom: 8.sp),
              WHElevatedButton.secondary(
                onPressed: onCancelPressed,
                title: cancelButtonTitle ?? "",
              ).paddingSymmetric(vertical: 8.sp),
            ],
          ).paddingAll(8.sp),
        if (cancelButtonTitle == null && confirmButtonTitle != null)
          SizedBox(
            width: double.infinity,
            child: WHElevatedButton.primary(
              onPressed: onConfirmPressed,
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
