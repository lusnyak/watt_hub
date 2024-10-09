import 'package:flutter/material.dart';
import 'package:watt_hub/data/local/onboarding_data/onboarding_data.dart';
import 'package:watt_hub_uikit/watt_hub_uikit.dart';

class OnboardingWidget extends StatelessWidget {
  const OnboardingWidget({super.key, required this.index});

  final int index;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          // const Spacer(),
          Image.asset(
            onboardingData[index].image,
          ),
          // const Spacer(),
          Text(
            onboardingData[index].title,
            style: body32MediumTextStyle,
          ),
          Text(
            onboardingData[index].description,
            style: body18RegularTextStyle,
          ),
          // const Spacer(),
        ],
      ),
    );
  }
}
