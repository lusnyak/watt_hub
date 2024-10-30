import 'package:watt_hub/config/config.dart';
import 'package:watt_hub/data/remote/station_remote/station_remote.dart';
import 'package:watt_hub/domain/body_requests_model/add_station/add_station_model.dart';
import 'package:watt_hub/domain/models/station/station_model.dart';

@lazySingleton
class StationRepository {
  Future<List<StationModel>?> getAllStations() async {
    return await getIt<StationRemoteApi>().getAllStations();
  }

  Future<List<StationModel>?> getFilteredStations(
    String? lng,
    String? lat,
    int? radius,
  ) async {
    return await getIt<StationRemoteApi>().getFilteredStations(
      lng,
      lat,
      radius,
    );
  }

  Future<StationModel?> addOwnStation(AddStationModel stationData) async {
    return await getIt<StationRemoteApi>().addOwnStation(stationData);
  }

  Future<StationModel?> getStationById(String id) async {
    return await getIt<StationRemoteApi>().getStationById(id);
  }

  Future<StationModel?> getMyStation() async {
    return await getIt<StationRemoteApi>().getMyStation();
  }

  Future<List<StationModel>?> getUserStations(String id) async {
    return await getIt<StationRemoteApi>().getUserStations(id);
  }
}
