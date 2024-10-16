import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:watt_hub/data/local/shared_preferences/shared_preferences_service.dart';
import 'package:watt_hub/domain/models/onboarding/onboarding_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'onboarding_event.dart';

part 'onboarding_state.dart';

part 'onboarding_bloc.freezed.dart';


class OnboardingBloc extends Bloc<OnboardingEvent, OnboardingState> {
  final List<OnboardingModel> onboardingData;
  final PageController pageController;

  OnboardingBloc(this.onboardingData)
      : pageController = PageController(),
        super(const OnboardingState.initial()) {
    on<LoadOnboardingEvent>((event, emit) {
      SharedPreferencesService().setBool(
        'isOnBoard',
        true,
      );
      emit(OnboardingState.loaded(onboardingData[0]));
    });

    on<NextOnboardingEvent>((event, emit) {
      if (state is _OnboardingLoadedState) {
        final currentPage = pageController.page!.toInt();
        if (currentPage < onboardingData.length - 1) {
          pageController.nextPage(
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeInOut,
          );
        } else {
          emit(const OnboardingState.complete());
        }
      }
    });

    on<OnboardingPageChangedEvent>((event, emit) {
      emit(OnboardingState.loaded(onboardingData[event.pageIndex]));
    });
  }

  @override
  Future<void> close() {
    pageController.dispose();
    return super.close();
  }
}
