import 'package:flutter/material.dart';
import 'package:grouped_list/grouped_list.dart';
import 'package:watt_hub/domain/models/order/order_model.dart';
import 'package:watt_hub/presentation/screens/requests/widgets/requests_list_item.dart';
import 'package:watt_hub/utils/helpers/calculate_cost_helper.dart';
import 'package:watt_hub_uikit/watt_hub_uikit.dart';

class RequestsGroupList extends StatelessWidget {
  const RequestsGroupList({
    super.key,
    this.stationRequests,
    this.myRequestsData,
  });

  final List<OrderModel>? stationRequests;
  final List<OrderModel>? myRequestsData;

  @override
  Widget build(BuildContext context) {
    final requestsData = stationRequests ?? myRequestsData;
    return GroupedListView<OrderModel, String>(
      elements: requestsData ?? [],
      groupBy: (element) => element.status ?? '',
      groupSeparatorBuilder: (String groupValue) => Text(
        groupValue,
        textAlign: TextAlign.center,
        style: body18SemiBoldTextStyle,
      ).paddingSymmetric(vertical: 8.h),
      itemBuilder: (context, element) {
        final totalCost = calculateTotalCost(
            element.station!.hourlyRate!.toDouble(),
            element.expectedHour!.toInt());
        return RequestsListItem(
          address: element.station?.address,
          orderTime: element.orderTime,
          expectedHour: element.expectedHour,
          phoneNumber: element.station?.phoneNumber,
          connectorType: element.connectorType?.title,
          cost: totalCost,
        );
      },
    ).paddingSymmetric(vertical: 20.h).expanded();
  }
}