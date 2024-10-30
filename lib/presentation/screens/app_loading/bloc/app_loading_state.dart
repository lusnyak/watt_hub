part of 'app_loading_bloc.dart';

@freezed
class AppLoadingState with _$AppLoadingState {
  const factory AppLoadingState.initial() = AppLoadingInitialState;
  const factory AppLoadingState.loading() = AppLoadingLoadingState;
  const factory AppLoadingState.success(UserModel? userData) = AppLoadingSuccessState;
  const factory AppLoadingState.error(String message) = AppLoadingErrorState;
  const factory AppLoadingState.loadToOnboarding() = LoadToOnboardingState;
  const factory AppLoadingState.loadToHome() = LoadToHomeState;
  const factory AppLoadingState.connectionError(String message) = ConnectionError;
}
