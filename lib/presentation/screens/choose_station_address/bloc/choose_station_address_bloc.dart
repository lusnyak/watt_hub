import 'package:latlong2/latlong.dart';
import 'package:watt_hub/config/config.dart';
import '../../../../utils/helpers/gelocator_helper.dart';
import '../../../../utils/helpers/location_helper.dart';

part 'choose_station_address_state.dart';

part 'choose_station_address_event.dart';

part 'choose_station_address_bloc.freezed.dart';

@injectable
class ChooseStationAddressBloc
    extends Bloc<ChooseStationAddressEvent, ChooseStationAddressState> {

  final LocationManager _locationManager = LocationManager();
  Future<LatLng?> _initializeLocation() async {
    final location = await _locationManager.getCurrentLocation();
    if (location != null) {
      return location;
    }
    return null;
  }
  ChooseStationAddressBloc() : super(const ChooseStationAddressState.initial()) {
    on<ChooseStationAddressEvent>((event, emit) async {

      await event.map(
        started: (_) async {
          emit(const ChooseStationAddressState.loading());
          try {
            final location = await _initializeLocation();
            await Future.delayed(const Duration(seconds: 2));
            emit(ChooseStationAddressState.loaded(location:location));
          } catch (e) {
            emit(ChooseStationAddressState.error(e.toString()));
          }
        },
        locationTapped: (value) async {
          emit(ChooseStationAddressState.loaded(location: value.location));
        },
        addressRequested: (value) async {
          try {
            final address = await getAddress(value.latitude, value.longitude);
            if (address != null) {
              emit(ChooseStationAddressState.loaded(
                address: address,
                location: LatLng(value.latitude, value.longitude),
              ));
            } else {
              emit(const ChooseStationAddressState.error("No address found"));
            }
          } catch (e) {
            emit(ChooseStationAddressState.error(e.toString()));
          }
        },
      );
    });
  }
}

