import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:watt_hub_uikit/watt_hub_uikit.dart';

class WHCalendar extends StatefulWidget {
  const WHCalendar({
    super.key,
    this.selectedDay,
    required this.onDaySelected,
  });

  final DateTime? selectedDay;
  final Function(DateTime selectedDay, DateTime focusedDay) onDaySelected;

  @override
  State<WHCalendar> createState() => _WHCalendarState();
}

class _WHCalendarState extends State<WHCalendar> {
  CalendarFormat _calendarFormat = CalendarFormat.month;

  @override
  Widget build(BuildContext context) {
    final firstDay = DateTime.now();
    return TableCalendar(
      focusedDay: DateTime.now(),
      firstDay: firstDay,
      lastDay: DateTime.utc(2030, 12, 31),
      rangeStartDay: DateTime.now(),
      availableCalendarFormats: const {
        CalendarFormat.month: 'Month',
        CalendarFormat.week: 'Week',
      },
      selectedDayPredicate: (day) {
        return isSameDay(widget.selectedDay, day);
      },
      onDaySelected: (selectedDay, focusedDay) {
        widget.onDaySelected(selectedDay, focusedDay);
      },
      calendarFormat: _calendarFormat,
      onFormatChanged: (format) {
        setState(() {
          _calendarFormat = format;
        });
      },
      calendarStyle: const CalendarStyle(
        todayDecoration: BoxDecoration(
          color: WattHubColors.primaryGreenColor,
          shape: BoxShape.circle,
        ),

        selectedDecoration: BoxDecoration(
          color: WattHubColors.primaryGreenColor,
          shape: BoxShape.circle,
        ),

      ),
    );
  }
}
