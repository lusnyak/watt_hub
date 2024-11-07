import 'package:flutter/material.dart';
import 'package:watt_hub/utils/extensions/localization_extensions.dart';
import 'package:watt_hub_uikit/watt_hub_uikit.dart';

class ReviewBottomSheet extends StatefulWidget {
  const ReviewBottomSheet({
    super.key,
    this.title,
    this.buttonText,
    this.showRateBar = true,
    required this.onSubmit,
  });
  final String? title;
  final String? buttonText;
  final bool showRateBar;
  final Function(double rating, String comment) onSubmit;

  @override
  State<ReviewBottomSheet> createState() => _ReviewBottomSheetState();
}

class _ReviewBottomSheetState extends State<ReviewBottomSheet> {
  double _rating = 0.0;
  final TextEditingController _controller = TextEditingController();
  @override
  void initState() {
    _rating = 0.0;
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void updateRating(double newRating) {
    setState(() {
      _rating = newRating;
    });
  }

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
          widget.title ?? '',
          style: body22MediumTextStyle,
        ).alignAtCenter().paddingOnly(bottom: 20.sp),
        divider.paddingSymmetric(vertical: 10.sp),
        widget.showRateBar
            ? Column(
                children: [
                  Text(
                    context.localized.rating_bar_title,
                    style: body18MediumTextStyle,
                  ).alignAtCenter().paddingOnly(bottom: 20.sp),
                  WHRatingBar(
                    onRatingUpdate: updateRating,
                  ).alignAtCenter(),
                  divider.paddingSymmetric(vertical: 10.sp),
                ],
              )
            : const SizedBox.shrink(),
        WHTextField.multiLine(
            label: context.localized.leave_review,
            hintText: context.localized.leave_review,
            controller: _controller),
        divider.paddingOnly(top: 10, bottom: 20.sp),
        WHElevatedButton.primary(
          title: widget.buttonText ?? '',
          onPressed: () {
            widget.onSubmit(_rating, _controller.text);
            Navigator.pop(context);
          },
        ),
      ],
    ).paddingSymmetric(vertical: 30.sp);
  }
}
