import 'package:flutter/material.dart';
import 'package:grouped_list/grouped_list.dart';
import 'package:watt_hub/domain/models/order/order_model.dart';
import 'package:watt_hub_uikit/watt_hub_uikit.dart';

class StationRequests extends StatelessWidget {
  const StationRequests({
    super.key,
    required this.stationRequests,
  });

  final List<OrderModel> stationRequests;

  @override
  Widget build(BuildContext context) {
    return GroupedListView<OrderModel, String>(
      elements: stationRequests,
      groupBy: (element) => element.status ?? '',
      groupSeparatorBuilder: (String groupValue) => Text(
        groupValue,
        style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      ),
      itemBuilder: (context, element) {
        return ListTile(
          title: Text(element.creator?.fullName ?? ''),
        );
      },
    ).paddingSymmetric(vertical: 20.h).expanded();
  }
}
