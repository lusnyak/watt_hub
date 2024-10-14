import 'package:equatable/equatable.dart';
import 'package:watt_hub/domain/models/onboarding/onboarding_model.dart';

abstract class OnboardingState extends Equatable {
  const OnboardingState();

  @override
  List<Object?> get props => [];
}

class OnboardingInitialState extends OnboardingState {}

class OnboardingLoadedState extends OnboardingState {
  final OnboardingModel currentModel;

  const OnboardingLoadedState(this.currentModel);

  @override
  List<Object?> get props => [currentModel];
}

class OnboardingCompleteState extends OnboardingState {}
