import 'package:equatable/equatable.dart';

abstract class OnboardingEvent extends Equatable {
  const OnboardingEvent();

  @override
  List<Object> get props => [];
}

class NextOnboarding extends OnboardingEvent {}

class LoadOnboarding extends OnboardingEvent {}

class OnboardingPageChanged extends OnboardingEvent {
  final int pageIndex;

  const OnboardingPageChanged(this.pageIndex);

  @override
  List<Object> get props => [pageIndex];
}
