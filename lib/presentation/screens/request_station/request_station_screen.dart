import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:watt_hub/presentation/screens/request_station/sub_widgets/leave_review.dart';

@RoutePage()
class RequestStationScreen extends StatelessWidget {
  const RequestStationScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
              LeaveReview(),
            ],
          ),
        ),
      ),
    );
  }
}
