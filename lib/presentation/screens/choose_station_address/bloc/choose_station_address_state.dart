part of "choose_station_address_bloc.dart";

@freezed
class ChooseStationAddressState with _$ChooseStationAddressState {
  const factory ChooseStationAddressState.initial( ) = _InitialState;

  const factory ChooseStationAddressState.loading() = _LoadingState;

  const factory ChooseStationAddressState.error(String message) = _ErrorState;

  const factory ChooseStationAddressState.loaded({
    String? address,
    LatLng? location,
  }) = _LoadedState;
}
