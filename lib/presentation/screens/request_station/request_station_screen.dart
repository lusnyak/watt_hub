import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:watt_hub/presentation/screens/app_loading/bloc/app_loading_bloc.dart';
import 'package:watt_hub/presentation/screens/request_station/sub_widgets/review_bottom_sheet.dart';
import 'package:watt_hub_uikit/watt_hub_uikit.dart';

@RoutePage()
class RequestStationScreen extends StatelessWidget {
  const RequestStationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final WhModalBottomSheet bottomSheetWidget = WhModalBottomSheet();
    Widget content = const ReviewBottomSheet(
      title: "Write a review",
      buttonText: "Submit",
    );
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const Text(
                "Request Station Screen!",
                style: TextStyle(
                  fontSize: 24.0,
                  color: Colors.blue,
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    bottomSheetWidget.showBottomSheet(context, content);
                  },
                  child: const Text('Open modal'))
            ],
          ),
        ),
      ),
    );
  }
}
