part of 'profile_bloc.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState.initial() = _ProfileInitialState;

  const factory ProfileState.loaded(ProfileModel profileData) =
      _ProfileLoadedState;

  const factory ProfileState.complete() = _ProfileCompleteState;
}
