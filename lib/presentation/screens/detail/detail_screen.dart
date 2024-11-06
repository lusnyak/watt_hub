import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:watt_hub/data/fake_data/connectors_data/connectors_data.dart';
import 'package:watt_hub_uikit/watt_hub_uikit.dart';

import '../../../domain/models/connector_type/connector_type_model.dart';

@RoutePage()
class DetailScreen extends StatefulWidget {
  const DetailScreen({super.key});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  DateTime? _selectedDay;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Enter Detail"),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Text("Select Date"),
                WHCalendar(
                  selectedDate: _selectedDay,
                  onDaySelected: (selectedDate, focusedDate) {
                    setState(() {
                      _selectedDay = selectedDate;
                    });
                  },
                ).paddingSymmetric(vertical: 8.w),

                const Text("Select Arrival Time"),
                WhDropDownButton<ConnectorTypeModel>(
                  items: connectorsData.map((e) => ConnectorTypeModel.fromJson(e),).toList(),
                  itemLabel: (connector) => connector.title ?? "",
                  onChanged: (value) {},
                ),
                // const SizedBox(height: 16),
                const Text("Select Charging Duration").paddingSymmetric(vertical: 8.w),
                // const SizedBox(height: 8),
                const Text("Comment").paddingSymmetric(vertical: 8.w),
                WHTextField.multiLine(
                  label: 'Comment',
                  hintText: 'Comment',
                  maxLines: 5,
                  controller: TextEditingController(),
                  onChanged: (value) => debugPrint(value),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter comment';
                    }
                    return null;
                  },
                ),
                WHElevatedButton.primary(
                  onPressed: () {},
                  title: 'Continue',
                ), // Remove the expanded() here
              ],
            ),
          ),
        ),
      ),
    );
  }
}
