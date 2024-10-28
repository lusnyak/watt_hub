import 'package:flutter/material.dart';
import 'package:watt_hub/config/config.dart';
import 'package:watt_hub/data/local/shared_preferences/shared_preferences_service.dart';
import 'package:watt_hub/presentation/screens/app_loading/bloc/app_loading_bloc.dart';
import 'package:watt_hub_uikit/watt_hub_uikit.dart';

@RoutePage()
class AppLoadingScreen extends StatelessWidget {
  const AppLoadingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<AppLoadingBloc>()..add(const GetUserEvent()),
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
        child: BlocListener<AppLoadingBloc, AppLoadingState>(
          listener: (context, state) {
            if (state is AppLoadingSuccessState) {
              if (state.userData != null) {
                context.router.push(const HomeRoute());
              }
            } else if (state is AppLoadingErrorState) {
              bool? isOnBoard =
                  SharedPreferencesService.instance.onBoardingLaunch();
              debugPrint('$isOnBoard isOnBoard');
              if (isOnBoard) {
                context.router.replace(const SignUpRoute());
              } else {
                context.router.replace(const OnboardingRoute());
              }
            }
          },
          child: const Center(
            child: WHCircularSpin(),
          ),
        ),
      ),
    );
  }
}
