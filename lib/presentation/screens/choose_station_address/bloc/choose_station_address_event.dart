part of 'choose_station_address_bloc.dart';

@freezed
class ChooseStationAddressEvent with _$ChooseStationAddressEvent {
  const factory ChooseStationAddressEvent.started() = _StartedEvent;

  const factory ChooseStationAddressEvent.locationTapped(LatLng location, ) =
      _LocationTappedEvent;

  const factory ChooseStationAddressEvent.addressRequested(
    double latitude,
    double longitude,
  ) = _AddressRequestedEvent;

}
