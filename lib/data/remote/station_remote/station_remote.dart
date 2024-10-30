import 'package:dio/dio.dart';
import 'package:watt_hub/config/config.dart';
import 'package:watt_hub/config/network/constants/constants.dart';
import 'package:watt_hub/config/network/constants/end_points.dart';
import 'package:watt_hub/domain/body_requests_model/add_station/add_station_model.dart';
import 'package:watt_hub/domain/models/station/station_model.dart';

part 'station_remote.g.dart';

@lazySingleton
@RestApi(baseUrl: APIBase.url)
abstract class StationRemoteApi {
  @factoryMethod
  factory StationRemoteApi(Dio dio) = _StationRemoteApi;

  @GET(EndPoints.stations)
  Future<List<StationModel>?> getAllStations();

  @POST(EndPoints.stationsFilter)
  Future<List<StationModel>?> getFilteredStations(
    String? lng,
    String? lat,
    int? radius,
  );

  @GET(EndPoints.stations)
  Future<StationModel?> getStationById(@Path("id") String id);

  @POST(EndPoints.stations)
  Future<StationModel?> addOwnStation(AddStationModel stationData);

  @GET(EndPoints.stationMy)
  Future<StationModel?> getMyStation();

  @GET(EndPoints.userStations)
  Future<List<StationModel>?> getUserStations(@Path("id") String id);
}
