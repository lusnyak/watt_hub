import 'dart:async';

import 'package:watt_hub/config/config.dart';
import 'package:watt_hub/data/remote/station_remote/station_remote.dart';
import 'package:watt_hub/domain/body_requests_model/add_station/add_station_model.dart';
import 'package:watt_hub/domain/body_requests_model/filter_stations/filter_stations_model.dart';
import 'package:watt_hub/domain/models/station/station_model.dart';

@lazySingleton
class StationRepository {
  /// TODO: - repositorinery zaprosneri handlingi hamar e ,
  /// cankali e catcherror depqum veradarcnel dadadrk masiv ,
  /// hetagayum bloci mej null stugumneric zerc mnalu hamar
  /// verabervum e bolorin - done
  ///
  Future<List<StationModel>?> getAllStations() async {
    return await getIt<StationRemoteApi>().stations().catchError((e) {
      return <StationModel>[];
    });
  }

  Future<List<StationModel>?> getFilteredStations(
      FilterStationsModel filterData) async {
    return await getIt<StationRemoteApi>()
        .stationsFilter(filterData)
        .catchError((_) => <StationModel>[]);
  }

  Future<StationModel?> addOwnStation(
    AddStationModel stationData,
  ) async {
    return await getIt<StationRemoteApi>().addStation(stationData);
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
        .catchError((_) => <StationModel>[]);
  }
}
