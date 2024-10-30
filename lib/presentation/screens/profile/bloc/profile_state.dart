part of 'profile_bloc.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState.initialState() = _ProfileInitialState;

  const factory ProfileState.loadingState() = _ProfileLoadingState;

  const factory ProfileState.errorState(String message) = _ProfileErrorState;

  const factory ProfileState.loadedState({
    required UserModel userData,
    StationModel? stationData,
    CarModel? carData,
  }) = _ProfileLoadedState;
}
