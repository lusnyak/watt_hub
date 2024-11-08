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
  TimeOfDay time = const TimeOfDay(hour: 18, minute: 00);
  TimeOfDay duration = const TimeOfDay(hour: 0, minute: 60);

  DateTime? _selectedDay;
  String selectedDurationString = '';
  String selectedTimeString = '';

  void _onDaySelected(DateTime selectedDate) {
    setState(() {
      _selectedDay = selectedDate;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Enter Detail", style: body18SemiBoldTextStyle),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                "Select Date",
                style: body16RegularTextStyle,
              ),
              WHCalendar(
                selectedDate: _selectedDay,
                onDaySelected: _onDaySelected,
                firstDate: DateTime(2020),
                lastDate: DateTime(2030),
              ).paddingSymmetric(vertical: 8.w),
              WHTextField.singleLine(
                label: 'Select Arrival Time',
                hintText: 'Select Arrival Time',
                controller: TextEditingController(),
                onTap: () {
                  WhDatePicker.of(context)
                      .showTimePicker(
                    initialTime: time,
                  )
                      .then((newDate) {
                    if (newDate != null) {
                      setState(() {
                        selectedTimeString = newDate.toDate().formattedTime();
                      });
                    }
                  });
                },
              ),
              WhDropDownButton<ConnectorTypeModel>(
                hintText: "Select Connector Type Model",
                items: connectorsData
                    .map(
                      (e) => ConnectorTypeModel.fromJson(e),
                    )
                    .toList(),
                itemLabel: (connector) => connector.title ?? "",
                onChanged: (value) {},
              ),

              WHTextField.singleLine(
                label: 'Select Charging Duration',
                hintText: 'Select Charging Duration',
                controller: TextEditingController(),
                onChanged: (value) => debugPrint(value),
                onTap: () {
                  WhDatePicker.of(context)
                      .showTimePicker(
                    initialTime: duration,
                  )
                      .then((newDate) {
                    if (newDate != null) {
                      setState(() {
                        selectedDurationString =
                            newDate.toDate().formattedTime();
                      });
                    }
                  });
                },
              ),
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
    );
  }
}
