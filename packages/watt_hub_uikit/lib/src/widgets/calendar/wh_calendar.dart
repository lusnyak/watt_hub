import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:watt_hub_uikit/watt_hub_uikit.dart';

class WHCalendar extends StatefulWidget {
  const WHCalendar({
    super.key,
    this.selectedDate,
    required this.onDaySelected,
    this.lastDate,
    this.firstDate,
  });

  final DateTime? firstDate;
  final DateTime? lastDate;
  final DateTime? selectedDate;

  final Function(DateTime selectedDate, DateTime focusedDate) onDaySelected;

  @override
  State<WHCalendar> createState() => _WHCalendarState();
}

class _WHCalendarState extends State<WHCalendar> {
  final CalendarFormat _calendarFormat = CalendarFormat.month;
  DateTime focusedDay = DateTime.now();
  DateTime selectedDay = DateTime.now();

  bool isSameMonth(DateTime date1, DateTime date2) {
    return date1.year == date2.year && date1.month == date2.month;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.r),
      decoration: BoxDecoration(
        color: WattHubColors.lightGrayColor,
        border: Border.all(
          color: WattHubColors.lighterGrayColor,
          width: 1.w,
        ),
        borderRadius: BorderRadius.circular(20.r),
      ),
      child: TableCalendar(
        rangeSelectionMode: RangeSelectionMode.disabled,
        focusedDay: focusedDay,
        firstDay: widget.firstDate ?? DateTime.now(),
        lastDay: widget.lastDate ?? DateTime.utc(2030, 12, 31),
        availableCalendarFormats: const {
          CalendarFormat.month: 'Month',
        },
        selectedDayPredicate: (day) {
          return isSameDay(widget.selectedDate, day);
        },
        onDaySelected: (selectedDay, focusedDay) {
          widget.onDaySelected(selectedDay, focusedDay);
          setState(() {
            this.focusedDay = selectedDay;
          });
        },
        calendarFormat: _calendarFormat,
        calendarStyle: CalendarStyle(
          outsideDaysVisible: false,
          todayTextStyle: body12MediumTextStyle.copyWith(
            color: WattHubColors.lighterGrayColor,
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
                        DateTime firstDate = widget.firstDate ?? DateTime.now();
                        DateTime previousFocusedDate = DateTime(
                          focusedDay.year,
                          focusedDay.month - 1,
                        );
                        if (previousFocusedDate.isAfter(firstDate)) {
                          setState(() {
                            focusedDay = previousFocusedDate;
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
                        DateTime lastDate =
                            widget.lastDate ?? DateTime.utc(2030, 12, 31);
                        DateTime nextFocusedDay = DateTime(
                          focusedDay.year,
                          focusedDay.month + 1,
                        );

                        if (nextFocusedDay.isBefore(lastDate) ||
                            isSameMonth(nextFocusedDay, lastDate)) {
                          setState(() {
                            focusedDay = nextFocusedDay;
                          });
                        }
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
                color: WattHubColors.lighterGrayColor,
                width: 2.w,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
