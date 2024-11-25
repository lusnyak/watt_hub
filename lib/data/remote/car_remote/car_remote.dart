import 'package:dio/dio.dart';
import 'package:watt_hub/config/config.dart';
import 'package:watt_hub/config/network/constants/constants.dart';
import 'package:watt_hub/config/network/constants/end_points.dart';
import 'package:watt_hub/domain/models/car_model/car_model.dart';
import 'package:watt_hub/domain/models/car_type/car_type_model.dart';
import 'package:watt_hub/domain/models/my_car_model/my_car_model.dart';

part 'car_remote.g.dart';

@lazySingleton
@RestApi(baseUrl: APIBase.url)
abstract class CarRemoteApi {
  @factoryMethod
  factory CarRemoteApi(Dio dio) = _CarRemoteApi;

  @GET(EndPoints.carTypes)
  Future<List<CarTypeModel>?> carTypes();

  @GET(EndPoints.carModels)
  Future<List<CarTypeModel>?> carModels();

  @GET(EndPoints.getCars)
  Future<List<CarModel>?> getCars();

  @GET(EndPoints.getMyCar)
  Future<MyCarModel?> getMyCar();

  @GET(EndPoints.getUserCars)
  Future<MyCarModel?> getUserCars(@Path("id") String id);

  @POST(EndPoints.addCar)
  Future<CarModel?> addCar(@Body() CarModel addCarData);
}
