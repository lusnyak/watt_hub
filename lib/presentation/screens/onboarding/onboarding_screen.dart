import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:watt_hub/config/routes/app_router.dart';
import 'package:watt_hub/data/local/onboarding_data/onboarding_data.dart';
import 'package:watt_hub_uikit/watt_hub_uikit.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

@RoutePage()
class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  int page = 0;
  PageController _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: PageView(
                controller: _controller,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        const Spacer(),
                        Image.asset(
                          onboardingData[page].image,
                        ),
                        const Spacer(),
                        Text(
                          onboardingData[page].title,
                          style: body32MediumTextStyle,
                        ),
                        Text(
                          onboardingData[page].description,
                          style: body18RegularTextStyle,
                        ),
                        const Spacer(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Center(
              child: SmoothPageIndicator(
                controller: _controller,
                count: 3,
                onDotClicked: (index) {},
                effect: const ExpandingDotsEffect(
                  activeDotColor: WattHubColors.primaryGreenColor,
                  dotColor: WattHubColors.primaryLightGreenColor,
                  dotHeight: 16,
                  dotWidth: 35,
                  spacing: 24,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 20.0),
              child: Divider(
// height: 20,
                thickness: 1.8,
                indent: 10,
                endIndent: 10,
                color: WattHubColors.lightGray,
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
                  Expanded(
                    child: WHElevatedButton.secondary(
                      onPressed: () {
                        AutoRouter.of(context).push(const DashboardRoute());
                      },
                      title: 'Skip',
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                      child: WHElevatedButton.primary(
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
                  )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
//

//divaider

//buttons
