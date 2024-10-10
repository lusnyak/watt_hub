import 'package:equatable/equatable.dart';
import 'package:watt_hub/domain/models/onboarding/onboarding_model.dart';

abstract class OnboardingState extends Equatable {
  const OnboardingState();

  @override
  List<Object?> get props => [];
}

class OnboardingInitial extends OnboardingState {}

class OnboardingLoaded extends OnboardingState {
  final int currentIndex;
  final OnboardingModel currentModel;

  const OnboardingLoaded(this.currentIndex, this.currentModel);

  @override
  List<Object?> get props => [currentIndex, currentModel];
}

class OnboardingComplete extends OnboardingState {}
