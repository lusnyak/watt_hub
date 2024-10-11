import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:watt_hub/config/routes/app_router.dart';
import 'package:watt_hub/data/local/onboarding_data/onboarding_data.dart';
import 'package:watt_hub/data/services/shared_preferences_service.dart';
import 'package:watt_hub/presentation/screens/onboarding/bloc/onboarding_state.dart';
import 'package:watt_hub/presentation/screens/onboarding/sub_widget/onboarding_widget.dart';
import 'package:watt_hub_uikit/watt_hub_uikit.dart';
import 'bloc/onboarding_bloc.dart';
import 'bloc/onboarding_event.dart';

@RoutePage()
class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {

  Future<void> _storeData() async {
    await SharedPreferencesService().setBool(
      'isOnBoard',
      true,
    );
  }

  final PageController _controller = PageController();

  @override
  Widget build(BuildContext context) {

    return BlocProvider(
      create: (context) =>
          OnboardingBloc(onboardingData)..add(LoadOnboarding()),
      child: Scaffold(
        body: BlocBuilder<OnboardingBloc, OnboardingState>(
          builder: (context, state) {
            if (state is OnboardingLoaded) {
              return SafeArea(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    PageView.builder(
                      controller: context.read<OnboardingBloc>().pageController,
                      onPageChanged: (index) {
                        context
                            .read<OnboardingBloc>()
                            .add(OnboardingPageChanged(index));
                      },
                      itemCount: onboardingData.length,
                      itemBuilder: (context, index) {
                        return OnboardingWidget(
                          model: onboardingData[index],
                        );
                      },
                    ).expanded(),
                    Center(
                      child: SmoothPageIndicator(
                        controller: context.read<OnboardingBloc>().pageController,
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
                      /// TODO: - use ScreenUtils tools and extensions expanded(), 8.h, r
                      Padding(
                      padding: EdgeInsets.symmetric(vertical: 8.h),
                      child: const Divider(
                        thickness: 1.8,
                        indent: 10,
                        endIndent: 10,
                        color: WattHubColors.lightGray,
                      ),
                    ),
                    Padding(
                      // padding: const EdgeInsets.all(8.0),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20.0,
                        vertical: 20.0,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            child: WHElevatedButton.secondary(
                              onPressed: () {
                                _storeData();
                                AutoRouter.of(context)
                                    .push(const DashboardRoute());
                              },
                              title: 'Skip',
                            ),
                          ),
                          20.w.widthBox,
                          Expanded(
                              child: WHElevatedButton.primary(
                            onPressed: () {
                              // _controller.jumpToPage(page)
                              context
                                  .read<OnboardingBloc>()
                                  .add(NextOnboarding());
                            },
                            title: 'Next',
                          )),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            } else {
              return const Center(child: CircularProgressIndicator());
            }
          },
        ),
      ),
    );
  }
}
