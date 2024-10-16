import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:watt_hub/config/locator/service_locator.dart';
import 'package:watt_hub/config/routes/app_router.dart';
import 'package:watt_hub/data/local/onboarding_data/onboarding_data.dart';
import 'package:watt_hub/presentation/screens/onboarding/sub_widget/onboarding_widget.dart';
import 'package:watt_hub_uikit/watt_hub_uikit.dart';
import 'bloc/onboarding_bloc.dart';

@RoutePage()
class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          getIt<OnboardingBloc>()..add(const LoadOnboardingEvent()),
      child: const _OnboardingView(),
    );
  }
}

class _OnboardingView extends StatelessWidget {
  const _OnboardingView();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<OnboardingBloc, OnboardingState>(
        listener: (context, state) {
          state.maybeWhen(
            orElse: () {},
            complete: () {
              AutoRouter.of(context).replace(const SignUpRoute());
            },
          );
        },
        builder: (context, state) {
          return state.maybeWhen(
            orElse: () => const CircularProgressIndicator().toCenter(),
            loaded: (currentModel) {
              return SafeArea(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    PageView.builder(
                      controller: context.read<OnboardingBloc>().pageController,
                      itemCount: onboardingData.length,
                      itemBuilder: (context, index) {
                        return OnboardingWidget(
                          model: onboardingData[index],
                        );
                      },
                    ).expanded(),
                    SmoothPageIndicator(
                      controller:
                          context.read<OnboardingBloc>().pageController,
                      count: 3,
                      effect: ExpandingDotsEffect(
                        activeDotColor: WattHubColors.primaryGreenColor,
                        dotColor: WattHubColors.primaryLightGreenColor,
                        dotHeight: 12.r,
                        dotWidth: 12.r,
                        spacing: 8,
                      ),
                    ).toCenter().paddingSymmetric(vertical: 16.h),
                    const Divider(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        WHElevatedButton.secondary(
                          onPressed: () {
                            AutoRouter.of(context).push(const DashboardRoute());
                          },
                          title: 'Skip',
                        ).expanded(),
                        20.w.widthBox,
                        WHElevatedButton.primary(
                          onPressed: () {
                            context
                                .read<OnboardingBloc>()
                                .add(const OnboardingEvent.nextOnboarding());
                          },
                          title: 'Next',
                        ).expanded(),
                      ],
                    ).paddingAll(20.r),
                  ],
                ),
              );
            },
          );
        },
      ),
    );
  }
}
