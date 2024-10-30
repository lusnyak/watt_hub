part of 'profile_bloc.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState.initial() = _ProfileInitialState;

  const factory ProfileState.loading() = _ProfileLoadingState;

  const factory ProfileState.error(String message) = _ProfileErrorState;

  const factory ProfileState.loaded({
    required UserModel userData,
    StationModel? stationData,
    CarModel? carData,
  }) = _ProfileLoadedState;
}
