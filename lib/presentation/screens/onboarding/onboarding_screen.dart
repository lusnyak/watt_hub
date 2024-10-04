import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:watt_hub/config/routes/app_router.dart';
import 'package:watt_hub_uikit/watt_hub_uikit.dart';

@RoutePage()
class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              "Onboarding Screen!",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 24.0,
                color: WattHubColors.primaryGreenColor,
                fontFamily: FontFamily.urbanist,
                fontWeight: FontWeight.w600,
              ),
            ),
            20.heightBox,
            WHElevatedButton.secondary(
              onPressed: () {
                AutoRouter.of(context).push(const DashboardRoute());
              },
              title: 'Guest',
            ),
            WHElevatedButton.primary(
              onPressed: () {
                AutoRouter.of(context).push(const SignUpRoute());
              },
              title: 'Sign Up',
            )
          ],
        ).paddingAll(20.0),
      ),
    );
  }
}
