part of 'onboarding_bloc.dart';

@freezed
class OnboardingEvent with _$OnboardingEvent {
  const factory OnboardingEvent.loadOnboarding() = LoadOnboardingEvent;

  const factory OnboardingEvent.nextOnboarding() = NextOnboardingEvent;

  const factory OnboardingEvent.onboardingPageChanged(int pageIndex) =
      OnboardingPageChangedEvent;
}
