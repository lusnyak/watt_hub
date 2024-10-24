import 'package:flutter/cupertino.dart';
import 'package:watt_hub/config/config.dart';
import 'package:watt_hub/data/local/onboarding_data/onboarding_data.dart';
import 'package:watt_hub/data/local/shared_preferences/shared_preferences_service.dart';
import 'package:watt_hub/domain/models/onboarding/onboarding_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'onboarding_event.dart';

part 'onboarding_state.dart';

part 'onboarding_bloc.freezed.dart';

@injectable
class OnboardingBloc extends Bloc<OnboardingEvent, OnboardingState> {
  final PageController pageController;

  OnboardingBloc()
      : pageController = PageController(),
        super(const OnboardingState.initial()) {
    on<LoadOnboardingEvent>((event, emit) {
      SharedPreferencesService.instance.setOnBoardingLaunch(true);
      emit(OnboardingState.loaded(onboardingData));
    });

    on<NextOnboardingEvent>((event, emit) {
      if (state is _OnboardingLoadedState) {
        final currentPage = pageController.page!.toInt();
        if (currentPage <
            (state as _OnboardingLoadedState).onboardingData.length - 1) {
          pageController.nextPage(
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeInOut,
          );
        } else {
          emit(const OnboardingState.complete());
        }
      }
    });
  }

  @override
  Future<void> close() {
    pageController.dispose();
    return super.close();
  }
}
