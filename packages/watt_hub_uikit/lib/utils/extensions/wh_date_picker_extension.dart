import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

extension DateTimeFormatter on DateTime {
  String formattedTime({bool is24HourFormat = false}) {
    final format = is24HourFormat ? DateFormat.Hm() : DateFormat.jm();

    return format.format(this);
  }

  String formattedDate({String pattern = 'yMMMd'}) {
    final format = DateFormat(pattern);
    return format.format(this);
  }

}

extension TimeOfDayExtension on TimeOfDay {
  DateTime toDate() {
    final today = DateTime.now();
    return DateTime(today.year, today.month, today.day, hour, minute);
  }
}
