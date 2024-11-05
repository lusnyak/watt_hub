import 'package:flutter/material.dart';
import 'package:watt_hub/domain/enums/order_status/order_status_enum.dart';
import 'package:watt_hub/presentation/screens/requests/widgets/request_item_info.dart';
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
    this.statusColor,
    this.status,
    this.kw,
    this.isStationRequests,
  });

  final String? address;
  final DateTime? orderTime;
  final double? expectedHour;
  final String? phoneNumber;
  final String? connectorType;
  final int? cost;
  final Color? statusColor;
  final OrderStatus? status;
  final num? kw;
  final bool? isStationRequests;

  @override
  Widget build(BuildContext context) {
    return Card(
      shadowColor: statusColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    orderTime!.formattedDate(),
                    style: body14RegularTextStyle,
                  ),
                  Text(
                    orderTime!.formattedTime(),
                    style: body14RegularTextStyle,
                  ),
                ],
              ),
              WHChip(
                label: '${status?.name}',
                backgroundColor: statusColor,
              ),
            ],
          ),
          const Divider(),
          Text(
            address ?? '',
            style: body16SemiBoldTextStyle,
          ),
          const Divider(),
          Row(
            children: [
              RequestItemInfo(
                title: connectorType,
                connectorIcon: const Icon(Icons.abc),
              ),
              const SizedBox(height: 60, child: VerticalDivider()),
              RequestItemInfo(
                title: context.localized.maxPower,
                subTitle: '$kw k W',
              ),
              const SizedBox(height: 60, child: VerticalDivider()),
              RequestItemInfo(
                title: context.localized.duration,
                subTitle: '${expectedHour?.toInt()} ${context.localized.hour}',
              ),
              const SizedBox(height: 60, child: VerticalDivider()),
              RequestItemInfo(
                title: context.localized.amount,
                subTitle: '\$${cost?.toDouble()}',
              ),
            ],
          ),
          const Divider(),
          RequestsFooter(status: status, isStationRequests: isStationRequests)
        ],
      ).paddingAll(20.r),
    ).paddingSymmetric(vertical: 10.h);
  }
}
