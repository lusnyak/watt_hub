import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:watt_hub/domain/models/onboarding/onboarding_model.dart';
import 'package:watt_hub_uikit/watt_hub_uikit.dart';

class OnboardingWidget extends StatelessWidget {
  final OnboardingModel model;

  const OnboardingWidget({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(model.image),
          Text(
            model.title,
            style: body32MediumTextStyle,
          ),
          Text(
            model.description,
            style: body18RegularTextStyle,
          ),
        ],
      ),
    );
  }
}
