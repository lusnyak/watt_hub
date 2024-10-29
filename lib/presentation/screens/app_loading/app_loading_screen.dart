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
            } else if (state is LoadToOnboardingState) {
              context.router.replace(const OnboardingRoute());
            } else if (state is LoadToHomeState) {
              context.router.replace(const SignUpRoute());
            } else if (state is ConnectionError) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(
                    state.message,
                    style: const TextStyle(color: Colors.white),
                  ),
                  backgroundColor: Colors.red,
                  duration: const Duration(seconds: 3),
                ),
              );
              return;
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
