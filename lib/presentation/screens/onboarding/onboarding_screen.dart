import 'package:auto_route/auto_route.dart';
import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:watt_hub/config/routes/app_router.dart';

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
                color: Colors.blue,
              ),
            ),
            20.heightBox,
            ElevatedButton(
              onPressed: () {
                AutoRouter.of(context).push(const DashboardRoute());
              },
              child: const Text(
                'Guest',
                style: TextStyle(
                  color: Colors.blue,
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                AutoRouter.of(context).push(const SignUpRoute());
              },
              child: const Text(
                'Sign Up',
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
