import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'onboarding_event.dart';
import 'onboarding_state.dart';
import 'package:watt_hub/domain/models/onboarding/onboarding_model.dart';

class OnboardingBloc extends Bloc<OnboardingEvent, OnboardingState> {
  final List<OnboardingModel> onboardingData;
  final PageController pageController;

  OnboardingBloc(this.onboardingData)
      : pageController = PageController(),
        super(OnboardingInitial()) {
    on<LoadOnboarding>((event, emit) {
      emit(OnboardingLoaded(onboardingData[0]));
    });

    on<NextOnboarding>((event, emit) async {
      if (state is OnboardingLoaded)  {
        final currentPage = pageController.page!.toInt();
        if (currentPage < onboardingData.length - 1) {
          // emit(const OnboardingLoaded());
           await pageController.nextPage(
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeInOut,
          );if (!emit.isDone) {
             emit(OnboardingLoaded(onboardingData[currentPage + 1]));
           }
        }
        on<OnboardingPageChanged>((event, emit) {
          emit(OnboardingLoaded(onboardingData[event.pageIndex]));
        });
        pageController.addListener(() {
          final currentPage = pageController.page!.toInt();
          emit(OnboardingLoaded(onboardingData[currentPage]));
        });

      }
    });
    @override
    Future<void> close() {
      pageController.dispose();
      return super.close();
    }

    
  }
}
