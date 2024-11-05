import 'package:flutter/material.dart';
import 'package:watt_hub/utils/extensions/extensions.dart';
import 'package:watt_hub_uikit/watt_hub_uikit.dart';

class RequestsListItem extends StatelessWidget {
  const RequestsListItem({
    super.key,
    this.address,
    this.orderTime,
    this.expectedHour,
    this.phoneNumber,
    this.connectorType,
    this.cost,
  });

  final String? address;
  final DateTime? orderTime;
  final double? expectedHour;
  final String? phoneNumber;
  final String? connectorType;
  final int? cost;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Text(
            address ?? '',
          ),
          Text(orderTime!.formattedDate()),
          Text(orderTime!.formattedTime()),
          Text(connectorType ?? ''),
          Text(
              '${context.localized.chargingTime}: ${expectedHour!.toInt()}${context.localized.h}'),
          Text('${context.localized.contactNumber}: $phoneNumber'),
          Text('${context.localized.cost}: $cost\$'),
        ],
      ).paddingAll(20.r),
    );
  }
}
