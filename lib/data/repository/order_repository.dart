import 'package:watt_hub/config/config.dart';
import 'package:watt_hub/data/remote/order_remote/order_remote.dart';
import 'package:watt_hub/domain/body_requests_model/add_order/add_order_model.dart';

@lazySingleton
class OrderRepository {
  Future<bool> orderCancelled(int id) {
    return getIt<OrderRemoteApi>().orderCancelled(id).then((response) {
      return response.statusCode == 200 || response.statusCode == 204;
    }).catchError((error) {
      return false;
    });
  }

  Future<bool> orderDeclined(int id) {
    return getIt<OrderRemoteApi>().orderDeclined(id).then((response) {
      return response.statusCode == 200 || response.statusCode == 204;
    }).catchError((error) {
      return false;
    });
  }

  Future<bool> orderUpdate(int id) {
    return getIt<OrderRemoteApi>().orderUpdate(id).then((response) {
      return response.statusCode == 200 || response.statusCode == 204;
    }).catchError((error) {
      return false;
    });
  }

  Future<bool> addOrder(AddOrderModel orderData) {
    return getIt<OrderRemoteApi>().addOrder(orderData).then((response) {
      return response.statusCode == 200 || response.statusCode == 204;
    }).catchError((error) {
      return false;
    });
  }
}
