import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class ChooseStationAddressScreen extends StatelessWidget {
  const ChooseStationAddressScreen ({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Center(
          child: Text("Choose Station Address Screen!"),
        ),
      ),
    );
  }
}