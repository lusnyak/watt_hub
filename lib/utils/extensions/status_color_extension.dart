import 'package:flutter/material.dart';
import 'package:watt_hub/domain/enums/order_status/order_status_enum.dart';
import 'package:watt_hub_uikit/watt_hub_uikit.dart';

extension OrderStatusColor on OrderStatus {
  Color get color {
    switch (this) {
      case OrderStatus.Pending:
        return WattHubColors.orangeColor;
      case OrderStatus.Confirmed:
        return WattHubColors.blueColor;
      case OrderStatus.Completed:
        return WattHubColors.primaryGreenColor;
      case OrderStatus.Cancelled:
        return WattHubColors.redColor;
      default:
        return WattHubColors.greyColor;
    }
  }
}
