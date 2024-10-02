import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class StationInfoScreen extends StatelessWidget {
  const StationInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Center(
          child: Text("Station Info Screen!"),
        ),
      ),
    );
  }
}
