part of 'app_loading_bloc.dart';

@freezed
class AppLoadingState with _$AppLoadingState {
  const factory AppLoadingState.initial() = _AppLoadingInitialState;
  const factory AppLoadingState.loading() = _AppLoadingLoadingState;
  const factory AppLoadingState.success() = _AppLoadingSuccessState;
  const factory AppLoadingState.error(String message) = _AppLoadingErrorState;
  const factory AppLoadingState.loadToOnboarding() = _LoadToOnboardingState;
  const factory AppLoadingState.loadToHome() = _LoadToHomeState;
  const factory AppLoadingState.loadToSignIn() = _LoadToSignInState;
  const factory AppLoadingState.noConnection() = _NoConnectionState;
}
