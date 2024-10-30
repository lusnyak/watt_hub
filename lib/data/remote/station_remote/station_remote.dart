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

  /// TODO: - kkrknkvim remote mej dzer functionneri methodneri
  /// anuny piti exni nuyyny inch backic kuga , endpointi pes
  /// ete endpointy stations e uremn dzer methody stations piti exni ,
  /// heto repositoriai mej inch kuzeq greq
  @GET(EndPoints.stations)
  Future<List<StationModel>?> getAllStations();

  /// TODO: - inch tesak parameter en , body, formdata, query,
  /// nshac che , usumnasirel retrofity
  @POST(EndPoints.stationsFilter)
  Future<List<StationModel>?> getFilteredStations(
    String? lng,
    String? lat,
    int? radius,
  );

  /// TODO: - anushadrutyun - endpointy sxal e drac
  @GET(EndPoints.stations)
  Future<StationModel?> getStationById(@Path("id") String id);

  @POST(EndPoints.stations)
  Future<StationModel?> addOwnStation(AddStationModel stationData);

  @GET(EndPoints.stationMy)
  Future<StationModel?> getMyStation();

  @GET(EndPoints.userStations)
  Future<List<StationModel>?> getUserStations(@Path("id") String id);
}
