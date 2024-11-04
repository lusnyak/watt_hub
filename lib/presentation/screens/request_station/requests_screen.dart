import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:watt_hub/domain/enums/enums.dart';
import 'package:watt_hub/utils/extensions/extensions.dart';
import 'package:watt_hub_uikit/watt_hub_uikit.dart';

@RoutePage()
class RequestsScreen extends StatefulWidget {
  const RequestsScreen({super.key});

  @override
  State<RequestsScreen> createState() => _RequestsScreenState();
}

class _RequestsScreenState extends State<RequestsScreen> {
  SegmentOption _selectedSegment = SegmentOption.my;

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text(
          context.localized.requests,
          style: body18MediumTextStyle,
        ),
        backgroundColor: WattHubColors.whiteColor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          CupertinoSlidingSegmentedControl<SegmentOption>(
            groupValue: _selectedSegment,
            onValueChanged: (SegmentOption? value) {
              setState(() {
                _selectedSegment = value!;
              });
            },
            children: const <SegmentOption, Widget>{
              SegmentOption.my: Padding(
                padding: EdgeInsets.symmetric(vertical: 8),
                child: Text('My'),
              ),
              SegmentOption.station: Padding(
                padding: EdgeInsets.symmetric(vertical: 8),
                child: Text('Station'),
              ),
            },
          ).paddingOnly(top: 20.h),
        ],
      ).paddingSymmetric(horizontal: 20.0),
    );
  }
}
