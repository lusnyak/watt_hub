import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geocoding/geocoding.dart';
import 'package:latlong2/latlong.dart';
import '../../../../config/config.dart';
import '../../../../utils/helpers/location_helper.dart';

part 'choose_station_address_state.dart';

part 'choose_station_address_event.dart';

part 'choose_station_address_bloc.freezed.dart';

@injectable
class ChooseStationAddressBloc
    extends Bloc<ChooseStationAddressEvent, ChooseStationAddressState> {
  LatLng? clickedLocation;

  final LocationManager _locationManager = LocationManager();

  ChooseStationAddressBloc()
      : super(const ChooseStationAddressState.initial()) {
    on<ChooseStationAddressEvent>((event, emit) async {
      await event.map(
        started: (_) async {
          emit(const ChooseStationAddressState.loading());
          try {
            await Future.delayed(const Duration(seconds: 2));
            emit(ChooseStationAddressState.loaded(location: clickedLocation));
          } catch (e) {
            emit(ChooseStationAddressState.error(e.toString()));
          }
        },
        locationTapped: (value) async {
          clickedLocation = value.location;
          emit(ChooseStationAddressState.loaded(location: clickedLocation));
        },
        addressRequested: (value) async {
          try {
            final address = await getAddress(value.latitude, value.longitude);
            if (address != null) {
              emit(ChooseStationAddressState.loaded(
                  address: address, location: clickedLocation));
            } else {
              emit(const ChooseStationAddressState.error("No address found"));
            }
          } catch (e) {
            emit(ChooseStationAddressState.error(e.toString()));
          }
        },
        initializeLocation: (_) async {
          emit(const ChooseStationAddressState.loading());
          try {
            final location = await _locationManager.getCurrentLocation();
            debugPrint("Current location: $location");
            if (location != null) {
              clickedLocation = location;
              emit(ChooseStationAddressState.loaded(location: clickedLocation));
            } else {
              emit(const ChooseStationAddressState.error("Unable to get current location"));
            }
          } catch (e) {
            debugPrint("Error during location initialization: $e");
            emit(ChooseStationAddressState.error(e.toString()));
          }
        },);
    });
  }

  Future<String?> getAddress(double latitude, double longitude) async {
    try {
      List<Placemark> placemarks =
          await placemarkFromCoordinates(latitude, longitude);
      Placemark placemark = placemarks[0];
      return "${placemark.street}, ${placemark.locality}, ${placemark.postalCode}, ${placemark.country}";
    } catch (e) {
      debugPrint("Error getting address: $e");
      return null;
    }
  }
}
