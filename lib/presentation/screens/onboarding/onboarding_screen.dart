import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:watt_hub/config/routes/app_router.dart';
import 'package:watt_hub/data/local/onboarding_data/onboarding_data.dart';
import 'package:watt_hub/presentation/widgets/onboarding/onboarding_widget.dart';
import 'package:watt_hub_uikit/watt_hub_uikit.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../data/services/shared_preferences_service.dart';

@RoutePage()
class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  int page = 0;

  Future<void> _storeData() async {
    await SharedPreferencesService().setBool(
      'isOnBoard',
      true,
    );
  }

  final PageController _controller = PageController();

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
                onPageChanged: _onPageViewChange,
                children: const [
                  OnboardingWidget(
                    index: 0,
                  ),
                  OnboardingWidget(
                    index: 1,
                  ),
                  OnboardingWidget(
                    index: 2,
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
                  dotWidth: 16,
                  spacing: 8,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 8.0),
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
                        _storeData();
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
                    onPressed: () async {
                      if (page < onboardingData.length - 1) {
                        _controller.nextPage(
                            duration: const Duration(milliseconds: 300),
                            curve: Curves.decelerate);
                        page++;
                      } else {
                        _controller.jumpToPage(0);
                        _storeData();
                        AutoRouter.of(context).replace(const SignUpRoute());
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

  _onPageViewChange(int index) {
    page = index;
  }
}
