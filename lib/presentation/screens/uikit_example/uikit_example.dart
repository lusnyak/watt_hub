import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:watt_hub/presentation/screens/uikit_example/uikit_popup.dart';
import 'package:watt_hub_uikit/watt_hub_uikit.dart';
import 'package:watt_hub/presentation/screens/uikit_example/uikit_drop_down_button.dart';

@RoutePage()
class UikitExamplePage extends StatelessWidget {
  const UikitExamplePage({super.key});

  @override
  Widget build(BuildContext context) {
     return Scaffold(
      body: const SafeArea(
        child: UikitPopup(),
      ).paddingAll(20.0),
    );
  }
}
