import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:watt_hub/presentation/screens/uikit_example/uikit_buttons.dart';

@RoutePage()
class UikitExamplePage extends StatelessWidget {
  const UikitExamplePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: UikitButtons()),
    );
  }
}
