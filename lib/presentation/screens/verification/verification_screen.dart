import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class VerificationScreen extends StatelessWidget {
  const VerificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Center(
          child: Text(
            "Verification Screen!",
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
