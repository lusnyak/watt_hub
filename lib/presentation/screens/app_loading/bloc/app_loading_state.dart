part of 'app_loading_bloc.dart';

@freezed
class AppLoadingState with _$AppLoadingState {
  const factory AppLoadingState.initial() = AppLoadingInitialState;
  const factory AppLoadingState.loading() = AppLoadingLoadingState;
  const factory AppLoadingState.success(UserModel? userData) = AppLoadingSuccessState;
  const factory AppLoadingState.error(String message) = AppLoadingErrorState;
}
