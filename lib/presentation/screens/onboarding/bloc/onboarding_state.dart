part of 'onboarding_bloc.dart';

@freezed
class OnboardingState with _$OnboardingState {
  const factory OnboardingState.initial() = _OnboardingInitialState;

  const factory OnboardingState.loaded(List<OnboardingModel> onboardingData) =
      _OnboardingLoadedState;

  const factory OnboardingState.complete() = _OnboardingCompleteState;
}
