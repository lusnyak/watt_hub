import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:watt_hub/config/routes/app_router.dart';
import 'package:watt_hub_uikit/watt_hub_uikit.dart';

@RoutePage()
class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              "Profile Screen!",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 24.0,
                color: Colors.blue,
              ),
            ),
            20.h.heightBox,
            ElevatedButton(
              onPressed: () => AutoRouter.of(context).push(const AddCarRoute()),
              child: const Text(
                'Add Car',
                style: TextStyle(
                  color: Colors.blue,
                ),
              ),
            ),
            20.h.heightBox,
            ElevatedButton(
              onPressed: () =>
                  AutoRouter.of(context).push(AddStationRoute()),
              child: const Text(
                'Add Station',
                style: TextStyle(
                  color: Colors.blue,
                ),
              ),
            )
          ],
        ).paddingAll(20.0),
      ),
    );
  }
}
