import 'package:flutter_bloc/flutter_bloc.dart';
import 'onboarding_event.dart';
import 'onboarding_event.dart';
import 'onboarding_state.dart';
import 'package:watt_hub/domain/models/onboarding/onboarding_model.dart';

import 'onboarding_state.dart';

class OnboardingBloc extends Bloc<OnboardingEvent, OnboardingState> {
  final List<OnboardingModel> onboardingData;

  OnboardingBloc(this.onboardingData) : super(OnboardingInitial()) {
    on<LoadOnboarding>((event, emit) {
      emit(OnboardingLoaded(0, onboardingData[0]));
    });

    on<NextOnboarding>((event, emit) {
      if (state is OnboardingLoaded) {
        final currentIndex = (state as OnboardingLoaded).currentIndex;
        if (currentIndex < onboardingData.length - 1) {
          emit(OnboardingLoaded(
              currentIndex + 1, onboardingData[currentIndex + 1]));
        } else {
          emit(OnboardingComplete());
        }
      }
    });

    on<OnboardingPageChanged>((event, emit) {
      emit(OnboardingLoaded(event.pageIndex, onboardingData[event.pageIndex]));
    });
  }
}
