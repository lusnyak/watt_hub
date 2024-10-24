import 'package:flutter/material.dart';

import '../../../watt_hub_uikit.dart';

class WHCalendar extends StatelessWidget {
   const WHCalendar({
    super.key,
    required this.focusedDay,
    this.selectedDay,
    required this.onDaySelected,
  });

  final DateTime focusedDay;
  final DateTime? selectedDay;
  final Function(DateTime selectedDay, DateTime focusedDay) onDaySelected;

  @override
  Widget build(BuildContext context) {
    final firstDay = DateTime(DateTime.now().year, DateTime.now().month, 1);
    return TableCalendar(
      focusedDay: focusedDay,
      firstDay: DateTime.now(),
      lastDay: DateTime.utc(2030, 12, 31),
      selectedDayPredicate: (day) {
        return isSameDay(selectedDay, day);
      },
      onDaySelected: (selectedDay, focusedDay) {
        if (selectedDay.isBefore(firstDay)) {
          return;
        }
        onDaySelected(selectedDay, focusedDay);
      },
      calendarStyle: const CalendarStyle(
        todayDecoration: BoxDecoration(
          color: WattHubColors.primaryLightGreenColor,
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
