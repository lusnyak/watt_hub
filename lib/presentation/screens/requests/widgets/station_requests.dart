import 'package:flutter/material.dart';
import 'package:grouped_list/grouped_list.dart';
import 'package:watt_hub_uikit/watt_hub_uikit.dart';

class StationRequests extends StatefulWidget {
  const StationRequests({super.key});

  @override
  State<StationRequests> createState() => _StationRequestsState();
}

class _StationRequestsState extends State<StationRequests> {
  final List<Map<String, dynamic>> items = [
    {'name': 'John', 'group': 'Friends'},
    {'name': 'Jane', 'group': 'Family'},
    {'name': 'Doe', 'group': 'Friends'},
    {'name': 'Mark', 'group': 'Work'},
    {'name': 'Lucy', 'group': 'Family'},
    {'name': 'Anna', 'group': 'Work'},
  ];

  @override
  Widget build(BuildContext context) {
    return GroupedListView<Map<String, dynamic>, String>(
      elements: items,
      groupBy: (element) => element['group'],
      groupSeparatorBuilder: (String groupValue) => Text(
        groupValue,
        style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      ),
      itemBuilder: (context, element) {
        return ListTile(
          title: Text(element['name']),
        );
      },
      itemComparator: (item1, item2) => item1['name'].compareTo(item2['name']),
    ).paddingSymmetric(vertical: 20.h).expanded();
  }
}
