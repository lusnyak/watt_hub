import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:watt_hub/domain/models/onboarding/onboarding_model.dart';
import 'package:watt_hub_uikit/watt_hub_uikit.dart';

class OnboardingWidget extends StatelessWidget {
  final OnboardingModel model;

  const OnboardingWidget({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          model.image,
          fit: BoxFit.fitWidth,
        ).expanded(),
        Text(
          model.title,
          style: body32SemiBoldTextStyle,
          textAlign: TextAlign.center,
        ),
        8.h.heightBox,
        Text(
          model.description,
          style: body16RegularTextStyle,
          textAlign: TextAlign.center,
        ),
      ],
    ).paddingSymmetric(horizontal: 16.w);
  }
}
