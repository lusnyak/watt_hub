import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../data/local/shared_preferences/shared_preferences_service.dart';
import 'onboarding_event.dart';
import 'onboarding_state.dart';
import 'package:watt_hub/domain/models/onboarding/onboarding_model.dart';

class OnboardingBloc extends Bloc<OnboardingEvent, OnboardingState> {
  final List<OnboardingModel> onboardingData;
  final PageController pageController;

  OnboardingBloc(this.onboardingData)
      : pageController = PageController(),
        super(OnboardingInitialState()) {
    on<LoadOnboardingEvent>((event, emit) {
      SharedPreferencesService().setBool(
        'isOnBoard',
        true,
      );
      emit(OnboardingLoadedState(onboardingData[0]));
    });

    on<NextOnboardingEvent>((event, emit) {
      if (state is OnboardingLoadedState) {
        final currentPage = pageController.page!.toInt();
        if (currentPage < onboardingData.length - 1) {
          pageController.nextPage(
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeInOut,
          );
        } else {
          emit(OnboardingCompleteState());
        }
      }
    });

    on<OnboardingPageChangedEvent>((event, emit) {
      emit(OnboardingLoadedState(onboardingData[event.pageIndex]));
    });
  }

  @override
  Future<void> close() {
    pageController.dispose();
    return super.close();
  }
}
