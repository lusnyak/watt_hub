part of 'onboarding_bloc.dart';

@freezed
class OnboardingEvent with _$OnboardingEvent {
  const factory OnboardingEvent.loadOnboarding() = _LoadOnboardingEvent;

  const factory OnboardingEvent.nextOnboarding() = _NextOnboardingEvent;

  const factory OnboardingEvent.onboardingPageChanged(int pageIndex) =
      _OnboardingPageChangedEvent;
}
