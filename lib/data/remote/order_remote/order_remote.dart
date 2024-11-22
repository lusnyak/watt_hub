import 'package:dio/dio.dart';
import 'package:watt_hub/config/config.dart';
import 'package:watt_hub/config/network/constants/constants.dart';
import 'package:watt_hub/config/network/constants/end_points.dart';
import 'package:watt_hub/domain/models/order/order_model.dart';

part 'order_remote.g.dart';

@lazySingleton
@RestApi(baseUrl: APIBase.url)
abstract class OrderRemoteApi {
  @factoryMethod
  factory OrderRemoteApi(Dio dio) = _OrderRemoteApi;

  @GET(EndPoints.getUserCars)
  Future<OrderModel?> getOrderById(@Path("id") String id);

  @GET(EndPoints.getUserCars)
  Future<List<OrderModel>?> getMyOrder();

  @GET(EndPoints.getUserCars)
  Future<List<OrderModel>?> getUserOrders(@Path("id") String id);
}
