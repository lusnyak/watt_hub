import 'package:equatable/equatable.dart';
import 'package:watt_hub/domain/models/onboarding/onboarding_model.dart';

abstract class OnboardingState extends Equatable {
  const OnboardingState();

  @override
  List<Object?> get props => [];
}

class OnboardingInitial extends OnboardingState {}

class OnboardingLoaded extends OnboardingState {
  final OnboardingModel currentModel;

  const OnboardingLoaded(this.currentModel);

  @override
  List<Object?> get props => [currentModel];
}

class OnboardingComplete extends OnboardingState {}
