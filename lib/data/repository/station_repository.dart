import 'dart:async';

import 'package:watt_hub/config/config.dart';
import 'package:watt_hub/data/remote/station_remote/station_remote.dart';
import 'package:watt_hub/domain/models/station/station_model.dart';

@lazySingleton
class StationRepository {
  /// TODO: - repositorinery zaprosneri handlingi hamar e ,
  /// cankali e catcherror depqum veradarcnel dadadrk masiv ,
  /// hetagayum bloci mej null stugumneric zerc mnalu hamar
  /// verabervum e bolorin - done
  ///
  Future<List<StationModel>?> getAllStations() async {
    return await getIt<StationRemoteApi>().stations();
  }

  Future<List<StationModel>?> getFilteredStations(
    String? lng,
    String? lat,
    int? radius,
  ) async {
    return await getIt<StationRemoteApi>()
        .stationsFilter(
          lng,
          lat,
          radius,
        )
        .catchError((e) => [] as FutureOr<List<StationModel>?>);
  }

  Future<StationModel?> addOwnStation(
    String? lat,
    String? lng,
    String? startTime,
    String? endTime,
    int? connectorTypeId,
    double? hourlyRate,
    String? phoneNumber,
    String? name,
    String? address,
    String? image,
    String? userId,
  ) async {
    return await getIt<StationRemoteApi>().addStation(
      lat,
      lng,
      startTime,
      endTime,
      connectorTypeId,
      hourlyRate,
      phoneNumber,
      name,
      address,
      image,
      userId,
    );
  }

  Future<StationModel?> getStationById(String id) async {
    return await getIt<StationRemoteApi>().stationsId(id);
  }

  Future<StationModel?> getMyStation() async {
    return await getIt<StationRemoteApi>().stationMy();
  }

  Future<List<StationModel>?> getUserStations(String id) async {
    return await getIt<StationRemoteApi>()
        .userStations(id)
        .catchError((e) => [] as FutureOr<List<StationModel>?>);
  }
}
