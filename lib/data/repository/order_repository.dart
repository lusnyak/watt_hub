import 'package:watt_hub/config/config.dart';
import 'package:watt_hub/data/remote/order_remote/order_remote.dart';
import 'package:watt_hub/domain/models/order/order_model.dart';

@lazySingleton
class OrderRepository {
  Future<OrderModel?> getOrderById(String id) async {
    return await getIt<OrderRemoteApi>().getOrderById(id);
  }

  Future<List<OrderModel>?> getMyOrders() async {
    return await getIt<OrderRemoteApi>().getMyOrder();
  }

  Future<List<OrderModel>?> getUserOrders(String id) async {
    return await getIt<OrderRemoteApi>().getUserOrders(id);
  }
}
