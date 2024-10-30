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
  /// heto repositoriai mej inch kuzeq greq - done
  @GET(EndPoints.stations)
  Future<List<StationModel>?> stations();

  /// TODO: - inch tesak parameter en , body, formdata, query,
  /// nshac che , usumnasirel retrofity - done
  @POST(EndPoints.stationsFilter)
  Future<List<StationModel>?> stationsFilter(
    @Body() String? lng,
    @Body() String? lat,
    @Body() int? radius,
  );

  /// TODO: - anushadrutyun - endpointy sxal e drac - done
  @GET(EndPoints.stationsId)
  Future<StationModel?> stationsId(@Path("id") String id);

  // Question about this line
  @POST(EndPoints.stations)
  Future<StationModel?> addOwnStation(AddStationModel stationData);

  @GET(EndPoints.stationMy)
  Future<StationModel?> stationMy();

  @GET(EndPoints.userStations)
  Future<List<StationModel>?> userStations(@Path("id") String id);
}
