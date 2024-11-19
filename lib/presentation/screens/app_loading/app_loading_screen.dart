import 'package:flutter/material.dart';
import 'package:watt_hub/config/config.dart';
import 'package:watt_hub/presentation/screens/app_loading/bloc/app_loading_bloc.dart';
import 'package:watt_hub_uikit/watt_hub_uikit.dart';

@RoutePage()
class AppLoadingScreen extends StatelessWidget {
  const AppLoadingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<AppLoadingBloc>()..add(const AppLoadingEvent.init()),
      child: const _AppLoadingView(),
    );
  }
}

class _AppLoadingView extends StatelessWidget {
  const _AppLoadingView();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BlocConsumer<AppLoadingBloc, AppLoadingState>(
          listener: (context, state) {
            state.maybeWhen(
              orElse: () {},
              // success: (userData) {
              //   if (userData != null) {
              //     context.router.replace(const HomeRoute());
              //   }
              // },
              loadToHome: () {
                context.router.replace(const HomeRoute());
              },
              loadToOnboarding: () {
                context.router.replace(const OnboardingRoute());
              },
              loadToSignIn: () {
                context.router.replace(const SignUpRoute());
              },
              error: (message) {
                context.showSnackBar(message: message);
              },
              noConnection: () {
                context.showSnackBar(message: "No internet connection");
              },
            );
          },
          builder: (context, state) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  WattHubAssets.images.logo.keyName,
                  height: 96.r,
                  width: 96.r,
                  fit: BoxFit.fitHeight,
                ),
                24.h.heightBox,
                state.maybeWhen(
                    orElse: () => const SizedBox.shrink(),
                    noConnection: () => Text(
                          "WattHub our application uses the Internet. Please check your connection and try again!",
                          textAlign: TextAlign.center,
                          style: body18MediumTextStyle.copyWith(
                              color: WattHubColors.redColor),
                        ).paddingSymmetric(horizontal: 20.w),
                    loading: () => const WHCircularSpin()),
              ],
            ).toCenter();
          },
        ),
      ),
    );
  }
}
