import 'package:auto_route/auto_route.dart';
import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:watt_hub/config/routes/app_router.dart';

@RoutePage()
class StationInfoScreen extends StatelessWidget {
  const StationInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              "Station Info Screen!",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 24.0,
                color: Colors.blue,
              ),
            ),
            20.heightBox,
            ElevatedButton(
                onPressed: () =>
                    AutoRouter.of(context).push(const DetailRoute()),
                child: const Text(
                  "Select",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.blue,
                  ),
                ))
          ],
        ),
      ).paddingAll(20.0),
    );
  }
}
