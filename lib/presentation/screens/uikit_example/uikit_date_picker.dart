import 'package:flutter/material.dart';
import 'package:watt_hub_uikit/utils/extensions/wh_date_picker_extension.dart';
import 'package:watt_hub_uikit/watt_hub_uikit.dart';

class UikitDatePicker extends StatefulWidget {
  const UikitDatePicker({super.key});

  @override
  State<UikitDatePicker> createState() => _UikitDatePickerState();
}

class _UikitDatePickerState extends State<UikitDatePicker> {
  DateTime date = DateTime(2016, 10, 26);
  TimeOfDay time = const TimeOfDay(hour: 18, minute: 00);

  String selectedDateString = '';
  String selectedTimeString = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  WhDatePicker.of(context)
                      .showDatePicker(
                    initialDate: date,
                  )
                      .then((newDate) {
                    if (newDate != null) {
                      setState(() {
                        selectedDateString = newDate.formattedDate();
                      });
                    }
                  });
                },
                child: Text("Choose Date - $selectedDateString")),
            ElevatedButton(
                onPressed: () {
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
                child: Text("Choose Date - $selectedTimeString")),
          ],
        ).paddingAll(20.0),
      ),
    );
  }
}
