import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:watt_hub/config/routes/app_router.dart';

import '../../../data/local/shared_preferences/shared_preferences_service.dart';

@RoutePage()
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Future<void> retrieveData(BuildContext context) async {
    // SharedPreferencesService.instance.setOnBoardingLaunch(false);
    if (!context.mounted) return;
    bool? isOnBoard = SharedPreferencesService.instance.onBoardingLaunch();
    if (isOnBoard) {
      AutoRouter.of(context).replace(const HomeRoute());
    } else {
      AutoRouter.of(context).replace(const OnboardingRoute());
    }
  }

  @override
  void initState() {
    super.initState();
    SharedPreferencesService.instance.deleteSelectedFilterConnectorId();
    SharedPreferencesService.instance.deleteSelectedFilterCarId();
    SharedPreferencesService.instance.deleteSelectedFilterRating();

    Timer(const Duration(seconds: 3), () {
      retrieveData(context);
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: SafeArea(
            child: Center(
      child: Text(
        "Splash Screen!",
        style: TextStyle(
          fontSize: 24.0,
          color: Colors.blue,
        ),
      ),
    )));
  }
}
