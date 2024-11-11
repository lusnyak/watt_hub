import 'package:flutter/material.dart';
import 'package:grouped_list/grouped_list.dart';
import 'package:watt_hub/domain/models/order/order_model.dart';
import 'package:watt_hub/presentation/screens/requests/widgets/requests_list_item.dart';
import 'package:watt_hub/utils/extensions/extensions.dart';
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

    if (requestsData == null || requestsData.isEmpty) {
      return const Center(child: Text("No requests available")).expanded();
    }

    final isStationRequests = stationRequests != null;

    return GroupedListView<OrderModel, String>(
      elements: requestsData,
      groupBy: (element) => element.status?.name ?? context.localized.unknown,
      groupSeparatorBuilder: (_) => 10.h.heightBox,
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
          statusColor: element.status!.color,
          status: element.status,
          kw: element.station?.kwt,
          isStationRequests: isStationRequests,
        );
      },
    );
  }
}
