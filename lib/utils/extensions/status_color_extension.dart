import 'package:flutter/material.dart';
import 'package:watt_hub/domain/enums/order_status/order_status_enum.dart';

extension OrderStatusColor on OrderStatus {
  Color get color {
    switch (this) {
      case OrderStatus.Pending:
        return Colors.yellow;
      case OrderStatus.Confirmed:
        return Colors.blue;
      case OrderStatus.Completed:
        return Colors.green;
      case OrderStatus.Cancelled:
        return Colors.red;
      default:
        return Colors.grey;
    }
  }
}
