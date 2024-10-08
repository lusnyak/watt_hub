import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:watt_hub_uikit/watt_hub_uikit.dart';

class UikitDatePicker extends StatefulWidget {
  const UikitDatePicker({super.key});

  @override
  State<UikitDatePicker> createState() => _UikitDatePickerState();
}

class _UikitDatePickerState extends State<UikitDatePicker> {
  DateTime date = DateTime(2016, 10, 26);
  DateTime time = DateTime(2016, 5, 10, 22, 35);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            WHDatePicker(
              title: 'Choose Date',
              date: date,
              onDateTimeChanged: (DateTime newDate) {
                setState(() => date = newDate);
              },
              mode: CupertinoDatePickerMode.date,
            ),
            40.heightBox,
            WHDatePicker(
              title: 'Choose Time',
              time: time,
              onDateTimeChanged: (DateTime newTime) {
                setState(() => time = newTime);
              },
              mode: CupertinoDatePickerMode.time,
            )
          ],
        ).paddingAll(20.0),
      ),
    );
  }
}
