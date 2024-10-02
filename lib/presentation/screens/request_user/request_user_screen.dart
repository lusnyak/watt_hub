import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class RequestUserScreen extends StatelessWidget {
  const RequestUserScreen ({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Center(
          child: Text("Request User Screen!"),
        ),
      ),
    );
  }
}