import 'package:flutter/material.dart';
import 'package:watt_hub/presentation/screens/request_station/sub_widgets/review_bottom_sheet.dart';
import 'package:watt_hub/utils/extensions/localization_extensions.dart';
import 'package:watt_hub_uikit/watt_hub_uikit.dart';

class LeaveReview extends StatefulWidget {
  const LeaveReview({super.key});

  @override
  State<LeaveReview> createState() => _LeaveReviewState();
}

class _LeaveReviewState extends State<LeaveReview> {
  double _rate = 0;
  String _comment = '';

  @override
  void initState() {
    super.initState();
  }

  void saveReview({required double rate, required String comment}) {
    setState(() {
      _rate = rate;
      _comment = comment;
    });
  }

  @override
  Widget build(BuildContext context) {
    final WhModalBottomSheet bottomSheetWidget = WhModalBottomSheet();

    Widget content = ReviewBottomSheet(
      title: context.localized.review_title,
      buttonText: context.localized.submit,
      showRateBar: true,
      onSubmit: (rate, comment) => saveReview(
        rate: rate,
        comment: comment,
      ),
    );

    return ElevatedButton(
      onPressed: () {
        bottomSheetWidget.showBottomSheet(context, content);
      },
      child: const Text('Open modal'),
    );
  }
}
