import 'package:flutter/material.dart';
import 'package:grouped_list/grouped_list.dart';
import 'package:watt_hub/domain/models/order/order_model.dart';
import 'package:watt_hub/presentation/screens/requests/widgets/requests_list_item.dart';
import 'package:watt_hub/utils/helpers/calculate_cost_helper.dart';
import 'package:watt_hub_uikit/watt_hub_uikit.dart';

class MyRequests extends StatelessWidget {
  const MyRequests({
    super.key,
    required this.myRequestsData,
  });

  final List<OrderModel> myRequestsData;

  @override
  Widget build(BuildContext context) {
    return GroupedListView<OrderModel, String>(
      elements: myRequestsData,
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
          connectorType: element.connectorType?.title,
          phoneNumber: element.station?.phoneNumber,
          cost: totalCost,
        );
      },
    ).paddingSymmetric(vertical: 20.h).expanded();
  }
}
