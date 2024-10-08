import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:watt_hub/config/routes/app_router.dart';
import 'package:watt_hub/data/local/onboarding_data/onboarding_data.dart';
import 'package:watt_hub_uikit/watt_hub_uikit.dart';

@RoutePage()
class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  int page = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Image.asset(
                    onboardingData[page].image,
                  ),
                  Text(
                    onboardingData[page].title,
                    style: body32MediumTextStyle,
                  ),
                  Text(
                    onboardingData[page].description,
                    style: body18RegularTextStyle,
                  ),
                ],
              ),
            ),
            Padding(
              // padding: const EdgeInsets.all(8.0),
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  WHElevatedButton.secondary(
                    onPressed: () {
                      AutoRouter.of(context).push(const DashboardRoute());
                    },
                    title: 'Skip',
                  ),
                  // SizedBox(
                  //   height: 20,
                  // ),
                  WHElevatedButton.primary(
                    onPressed: () {
                      if (page != onboardingData.length - 1) {
                        setState(() {
                          page++;
                        });
                      } else {
                        AutoRouter.of(context).push(const SignUpRoute());
                      }
                    },
                    title: 'Next',
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
