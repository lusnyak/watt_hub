import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class AddStationScreen extends StatelessWidget {
  const AddStationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Center(
          child: Text("Add Station Screen!"),
        ),
      ),
    );
  }
}
