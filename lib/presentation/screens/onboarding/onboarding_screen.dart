import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:watt_hub/config/routes/app_router.dart';
import 'package:watt_hub/data/local/onboarding_data/onboarding_data.dart';
import 'package:watt_hub/presentation/screens/onboarding/bloc/onboarding_state.dart';
import 'package:watt_hub/presentation/screens/onboarding/sub_widget/onboarding_widget.dart';
import 'package:watt_hub_uikit/watt_hub_uikit.dart';
import 'bloc/onboarding_bloc.dart';
import 'bloc/onboarding_event.dart';

@RoutePage()
class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          OnboardingBloc(onboardingData)..add(LoadOnboardingEvent()),
      child: Scaffold(
        body: BlocConsumer<OnboardingBloc, OnboardingState>(
          listener: (context, state) {
            if (state is OnboardingCompleteState) {
              AutoRouter.of(context).replace(const SignUpRoute());
            }
          },
          builder: (context, state) {
            if (state is OnboardingLoadedState) {
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
                            .add(OnboardingPageChangedEvent(index));
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
                        controller:
                            context.read<OnboardingBloc>().pageController,
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
                          WHElevatedButton.secondary(
                            onPressed: () {
                              AutoRouter.of(context)
                                  .push(const DashboardRoute());
                            },
                            title: 'Skip',
                          ).expanded(),
                          20.w.widthBox,
                          WHElevatedButton.primary(
                            onPressed: () {
                              context
                                  .read<OnboardingBloc>()
                                  .add(NextOnboardingEvent());
                            },
                            title: 'Next',
                          ).expanded(),
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
