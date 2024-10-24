import 'package:flutter/material.dart';
import 'package:watt_hub_uikit/watt_hub_uikit.dart';

class UikitCalendar extends StatefulWidget {
  const UikitCalendar({super.key});

  @override
  State<UikitCalendar> createState() => _UikitCalendarState();
}

class _UikitCalendarState extends State<UikitCalendar> {

  DateTime? _selectedDay;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          WHCalendar(
            selectedDay: _selectedDay,
            onDaySelected: (selectedDay, focusedDay) {
              setState(() {
                _selectedDay = selectedDay;
              });
            },
          ),

        ],
      ),
    );
  }
}
