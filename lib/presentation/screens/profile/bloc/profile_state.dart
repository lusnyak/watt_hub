part of 'profile_bloc.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState.initial() = _ProfileInitialState;

  const factory ProfileState.loaded(
      Map<String, dynamic> profileData,
      Map<String, dynamic> stationData,
      Map<String, dynamic> carData) = _ProfileLoadedState;

  const factory ProfileState.complete() = _ProfileCompleteState;
}
