import 'package:freezed_annotation/freezed_annotation.dart';

part 'onboarding_model.freezed.dart';

part 'onboarding_model.g.dart';

@freezed
class OnboardingModel with _$OnboardingModel {
  const factory OnboardingModel({
    required String id,
    required String title,
    required String description,
    required String image,
  }) = _OnboardingModel;

  factory OnboardingModel.fromJson(Map<String, dynamic> json) =>
      _$OnboardingModelFromJson(json);
}
