import 'package:flutter/material.dart';

import '../../../watt_hub_uikit.dart';

class WHPopup {
  final BuildContext context;

  WHPopup.of(this.context);

  Future<void> showWithLoading({
    Widget? image,
    required String title,
    required String subTitle,
  }) async {
    await showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return _WHPopup(
          image: image,
          title: title,
          subTitle: subTitle,
          child: const WHCircularSpin(),
        );
      },
    );
  }

  Future<void> showWithButtons({
    Widget? image,
    required String title,
    required String subTitle,
    required String cancelButtonTitle,
    required String confirmButtonTitle,
    VoidCallback? onConfirmPressed,
    VoidCallback? onCancelPressed,
  }) async {
    await showDialog<void>(
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

  Future<void> showWithConfirm({
    Widget? image,
    required String title,
    required String subTitle,
    required String confirmButtonTitle,
    VoidCallback? onConfirmPressed,
  }) async {
    await showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return _WHPopup(
          image: image,
          title: title,
          subTitle: subTitle,
          confirmButtonTitle: confirmButtonTitle,
          onConfirmPressed: onConfirmPressed,
        );
      },
    );
  }

  Future<void> show({
    Widget? image,
    required String title,
    required String subTitle,
    String? cancelButtonTitle,
    String? confirmButtonTitle,
    VoidCallback? onConfirmPressed,
    VoidCallback? onCancelPressed,
    Widget? child,
  }) async {
    await showDialog<void>(
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
          child: child,
        );
      },
    );
  }
}

class _WHPopup extends StatelessWidget {
  const _WHPopup({
    this.image,
    required this.title,
    required this.subTitle,
    this.cancelButtonTitle,
    this.confirmButtonTitle,
    this.onConfirmPressed,
    this.onCancelPressed,
    this.child,
  });

  final Widget? image;
  final String title;
  final String subTitle;
  final String? cancelButtonTitle;
  final String? confirmButtonTitle;
  final VoidCallback? onConfirmPressed;
  final VoidCallback? onCancelPressed;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: image,
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
          ).paddingSymmetric(horizontal: 20.w, vertical: 8.h),
        ],
      ),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(50.r))),
      actions: <Widget>[
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.min,
          children: [
            if (confirmButtonTitle != null)
              WHElevatedButton.primary(
                onPressed: onConfirmPressed,
                title: confirmButtonTitle ?? "",
                shadow: false,
              ).paddingOnly(bottom: 8.h),
            if (cancelButtonTitle != null)
              WHElevatedButton.secondary(
                onPressed: onCancelPressed,
                title: cancelButtonTitle ?? "",
              ).paddingSymmetric(vertical: 8.h),
            if (child != null)
              Center(
                child: child,
              ).paddingAll(20.r),
          ],
        ).paddingAll(8.r),
      ],
      actionsPadding: EdgeInsets.symmetric(horizontal: 12.w),
      contentPadding: EdgeInsets.zero,
      backgroundColor: Colors.white,
    ).paddingAll(20.r);
  }
}
