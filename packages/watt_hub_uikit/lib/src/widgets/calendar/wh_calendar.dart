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
  DateTime focusedDay = DateTime.now();
  final firstDay = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0), // Padding around the calendar
      decoration: BoxDecoration(
        color: WattHubColors.grayColor,
        border: Border.all(
          color: WattHubColors.lightGray.withOpacity(0.5),
          width: 1.w,
        ),
        // borderRadius: BorderRadius.circular(15),
        borderRadius: BorderRadius.circular(20.r),
      ),
      child: TableCalendar(
        rangeSelectionMode: RangeSelectionMode.disabled,
        focusedDay: focusedDay,
        firstDay: firstDay,
        lastDay: DateTime.utc(2030, 12, 31),
        // rangeStartDay: DateTime.now(),
        availableCalendarFormats: const {
          CalendarFormat.month: 'Month',
          CalendarFormat.week: 'Week',
        },
        selectedDayPredicate: (day) {
          return isSameDay(widget.selectedDay, day);
        },

        onDaySelected: (selectedDay, focusedDay) {
          widget.onDaySelected(selectedDay, focusedDay);
          setState(() {
            this.focusedDay = selectedDay;
          });
        },
        calendarFormat: _calendarFormat,
        onFormatChanged: (format) {
          setState(() {
            _calendarFormat = format;
          });
        },
        calendarStyle: const CalendarStyle(
          // isTodayHighlighted: false,

          defaultDecoration: BoxDecoration(),
          rowDecoration: BoxDecoration(),

          holidayDecoration: BoxDecoration(),
          todayDecoration: BoxDecoration(
            color: WattHubColors.primaryLightGreenColor,
            shape: BoxShape.circle,
          ),
          selectedDecoration: BoxDecoration(
            color: WattHubColors.primaryGreenColor,
            shape: BoxShape.circle,
          ),
        ),
        onPageChanged: (focusedDay) {
          setState(() {
            this.focusedDay = focusedDay;
          });
        },
        headerStyle: HeaderStyle(
          titleCentered: true,
          titleTextStyle: body18SemiBoldTextStyle,
          headerPadding: EdgeInsets.only(
            bottom: 4.h,
          ),
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: WattHubColors.lightGray.withOpacity(0.5),
                width: 2.w,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
