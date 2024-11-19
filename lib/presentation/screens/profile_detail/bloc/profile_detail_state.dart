part of 'profile_detail_bloc.dart';

@freezed
class ProfileDetailState with _$ProfileDetailState {
  const factory ProfileDetailState.initial() = _InitialState;
  const factory ProfileDetailState.loading() = _LoadingState;
  const factory ProfileDetailState.loaded(UserModel user) = _LoadedState;
  const factory ProfileDetailState.error(String message) = _ErrorState;
}
