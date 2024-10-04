import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class FilterScreen extends StatelessWidget {
  const FilterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const SafeArea(
        child: Center(
          child: Text(
            "Filter Screen!",
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
