import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class RequestStationScreen extends StatelessWidget {
  const RequestStationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Center(
          child: Text(
            "Request Station Screen!",
            style: TextStyle(
              fontSize: 24.0,
              color: Colors.blue,
            ),
          ),
        ),
      ),
    );
  }
}
