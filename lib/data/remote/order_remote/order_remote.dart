import 'package:dio/dio.dart';
import 'package:watt_hub/config/config.dart';
import 'package:watt_hub/config/network/constants/constants.dart';
import 'package:watt_hub/config/network/constants/end_points.dart';
import 'package:watt_hub/domain/body_requests_model/add_order/add_order_model.dart';
import 'package:watt_hub/domain/models/order/order_model.dart';

part 'order_remote.g.dart';

@lazySingleton
@RestApi(baseUrl: APIBase.url)
abstract class OrderRemoteApi {
  @factoryMethod
  factory OrderRemoteApi(Dio dio) = _OrderRemoteApi;

  @PUT(EndPoints.cancelledOrder)
  Future<dynamic> orderCancelled(
    @Path("id") int id,
  );

  @PUT(EndPoints.declinedOrder)
  Future<dynamic> orderDeclined(
    @Path("id") int id,
  );

  @PUT(EndPoints.updateOrder)
  Future<dynamic> orderUpdate(
    @Path("id") int id,
  );

  @POST(EndPoints.createOrder)
  Future<dynamic> addOrder(@Body() AddOrderModel orderData);

  @GET(EndPoints.orderId)
  Future<OrderModel?> getOrderById(@Path("id") String id);

  @GET(EndPoints.orderMy)
  Future<List<OrderModel>?> getMyOrder();

  @GET(EndPoints.userOrder)
  Future<List<OrderModel>?> getUserOrders(@Path("id") String id);
}
