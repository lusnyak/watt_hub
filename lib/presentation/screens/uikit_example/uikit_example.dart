import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:watt_hub_uikit/watt_hub_uikit.dart';
import '../detail/detail_screen.dart';

import '../detail/detail_screen.dart';

@RoutePage()
class UikitExamplePage extends StatelessWidget {
  const UikitExamplePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const SafeArea(
        child: DetailScreen(),
      ).paddingAll(20.0),
    );
  }
}
