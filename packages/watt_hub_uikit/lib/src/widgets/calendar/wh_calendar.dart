import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:watt_hub_uikit/watt_hub_uikit.dart';

class WHCalendar extends StatefulWidget {
  const WHCalendar({
    super.key,
    this.selectedDay,
    required this.onDaySelected,
    this.lastDay,
  });

  final DateTime? selectedDay;
  final DateTime? lastDay;
  final Function(DateTime selectedDay, DateTime focusedDay) onDaySelected;

  @override
  State<WHCalendar> createState() => _WHCalendarState();
}

class _WHCalendarState extends State<WHCalendar> {
  final CalendarFormat _calendarFormat = CalendarFormat.month;
  DateTime focusedDay = DateTime.now();
  final firstDay = DateTime.now();



  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.r), // Padding around the calendar
      decoration: BoxDecoration(
        color: WattHubColors.grayColor,
        border: Border.all(
          color: WattHubColors.lightGray.withOpacity(0.5),
          width: 1.w,
        ),
        borderRadius: BorderRadius.circular(20.r),
      ),
      child: TableCalendar(
        rangeSelectionMode: RangeSelectionMode.disabled,
        focusedDay: focusedDay,
        firstDay: firstDay,
        lastDay: DateTime.utc(2030, 12, 31),
        availableCalendarFormats: const {
          CalendarFormat.month: 'Month',
          // CalendarFormat.week: 'Week',
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
        calendarStyle: CalendarStyle(
          todayTextStyle: body12MediumTextStyle.copyWith(
            color: WattHubColors.lightGray,
          ),
          todayDecoration: const BoxDecoration(
            color: WattHubColors.primaryLightGreenColor,
            shape: BoxShape.circle,
          ),
          selectedDecoration: const BoxDecoration(
            color: WattHubColors.primaryGreenColor,
            shape: BoxShape.circle,
          ),
        ),
        onPageChanged: (focusedDay) {
          setState(() {
            this.focusedDay = focusedDay;
          });
        },
        calendarBuilders: CalendarBuilders(
          headerTitleBuilder: (context, date) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  DateFormat.yMMMM().format(date),
                  style: body18SemiBoldTextStyle,
                ),
                10.w.widthBox,
                Row(
                  children: [
                    IconButton(
                      icon: const Icon(Icons.chevron_left),
                      onPressed: () {
                        if (focusedDay.isAfter(DateTime(firstDay.year, firstDay.month, 1)))  {
                          setState(() {
                            focusedDay = DateTime(focusedDay.year,
                                focusedDay.month - 1, focusedDay.day);
                          });
                        }
                      },
                    ),
                    IconButton(
                      icon: const Icon(
                        Icons.chevron_right,
                        color: WattHubColors.primaryGreenColor,
                      ),
                      onPressed: () {
                        setState(() {
                          focusedDay = DateTime(focusedDay.year,
                              focusedDay.month + 1, focusedDay.day);
                        });
                      },
                    ),
                  ],
                ),
              ],
            );
          },
        ),
        headerStyle: HeaderStyle(
          titleCentered: true,
          leftChevronVisible: false,
          rightChevronVisible: false,
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
