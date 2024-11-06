import 'package:flutter/material.dart';
import 'package:watt_hub_uikit/watt_hub_uikit.dart';

class ReviewBottomSheet extends StatelessWidget {
  const ReviewBottomSheet({super.key, this.title, this.buttonText});
  final String? title;
  final String? buttonText;

  @override
  Widget build(BuildContext context) {
    Divider divider = const Divider(
      thickness: 2,
    );
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Text(
          title ?? '',
          style: body22MediumTextStyle,
        ).alignAtCenter().paddingOnly(bottom: 20.sp),
        divider.paddingSymmetric(vertical: 10.sp),
        Text(
          "Give it a star",
          style: body18MediumTextStyle,
        ).alignAtCenter().paddingOnly(bottom: 20.sp),
        WHRatingBar().alignAtCenter(),
        divider.paddingSymmetric(vertical: 10.sp),
        WHTextField.multiLine(
            label: "Comment",
            hintText: "Some text",
            controller: TextEditingController()),
        divider.paddingOnly(top: 10, bottom: 20.sp),
        WHElevatedButton.primary(
          title: buttonText ?? '',
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ],
    ).paddingSymmetric(vertical: 30.sp);
  }
}
