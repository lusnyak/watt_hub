import 'package:watt_hub/domain/models/onboarding/onboarding_model.dart';
import 'package:watt_hub_uikit/watt_hub_uikit.dart';

List<OnboardingModel> onboardingData = [
  OnboardingModel(
    id: '1',
    title: "Easily find EV charging stations around you",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor...",
    image: WattHubAssets.images.onboardingFirstImg.keyName,
  ),
  OnboardingModel(
    id: '2',
    title: "Fast and simple to make reservation & check in",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor...",
    image: WattHubAssets.images.onboardingSecondImg.keyName,
  ),
  OnboardingModel(
    id: '3',
    title: "Make payments safely & quickly with EVPoint",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor...",
    image: WattHubAssets.images.onboardingThirdImg.keyName,
  ),
];
