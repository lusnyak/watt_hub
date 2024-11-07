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

  final Function(DateTime selectedDate) onDaySelected;

  @override
  State<WHCalendar> createState() => _WHCalendarState();
}

class _WHCalendarState extends State<WHCalendar> {
  PageController calendarController = PageController();
  DateTime? focusedDay;
  DateTime? selectedDay;

  @override
  void initState() {
    super.initState();
    selectedDay = widget.selectedDate;
  }

  @override
  void didUpdateWidget(covariant WHCalendar oldWidget) {
    super.didUpdateWidget(oldWidget);
    selectedDay = widget.selectedDate;
    if (mounted) setState(() {});
  }

  void _handleNextMonth() {
    calendarController.nextPage(
      duration: const Duration(milliseconds: 200),
      curve: Curves.ease,
    );
  }

  void _handlePreviousMonth() {
    calendarController.previousPage(
      duration: const Duration(milliseconds: 200),
      curve: Curves.ease,
    );
  }

  void onDaySelected(sDay, fDay) {
    if (mounted) {
      setState(() {
        selectedDay = sDay;
        focusedDay = fDay;
      });
    }
    widget.onDaySelected.call(selectedDay!);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.r),
      decoration: BoxDecoration(
        color: WattHubColors.lighterGrayColor,
        border: Border.all(
          color: WattHubColors.lighterGrayColor,
          width: 1.0,
        ),
        borderRadius: BorderRadius.circular(20.r),
      ),
      child: TableCalendar(
        rangeSelectionMode: RangeSelectionMode.disabled,
        firstDay: widget.firstDate ?? DateTime.now(),
        lastDay: widget.lastDate ?? DateTime.utc(2030, 12, 31),
        focusedDay: focusedDay ?? DateTime.now(),
        onCalendarCreated: (controller) {
          calendarController = controller;
        },
        selectedDayPredicate: (day) {
          return isSameDay(widget.selectedDate, day);
        },
        onDaySelected: onDaySelected,
        calendarFormat: CalendarFormat.month,
        calendarStyle: CalendarStyle(
          outsideDaysVisible: false,
          todayTextStyle: body12MediumTextStyle,
          todayDecoration: const BoxDecoration(
            color: WattHubColors.primaryLightGreenColor,
            shape: BoxShape.circle,
          ),
          selectedDecoration: const BoxDecoration(
            color: WattHubColors.primaryGreenColor,
            shape: BoxShape.circle,
          ),
        ),
        onPageChanged: (date) {
          if (mounted) {
            setState(() {
              focusedDay = date;
            });
          }
        },
        calendarBuilders: CalendarBuilders(
          headerTitleBuilder: (context, date) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  DateFormat.yMMMM().format(date),
                  style: body18SemiBoldTextStyle,
                ).expanded(),
                10.w.widthBox,
                Row(
                  children: [
                    InkWell(
                      radius: 30.r,
                      onTap: _handlePreviousMonth,
                      child: const Icon(Icons.chevron_left),
                    ),
                    10.w.widthBox,
                    InkWell(
                      radius: 30.r,
                      onTap: _handleNextMonth,
                      child: const Icon(Icons.chevron_right),
                    ),
                  ],
                ),
              ],
            );
          },
        ),
        headerStyle: HeaderStyle(
          leftChevronVisible: false,
          rightChevronVisible: false,
          headerPadding: EdgeInsets.only(bottom: 10.h),
          formatButtonVisible: false,
          headerMargin: EdgeInsets.only(bottom: 10.h),
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: WattHubColors.lightGrayColor,
                width: 2.w,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
