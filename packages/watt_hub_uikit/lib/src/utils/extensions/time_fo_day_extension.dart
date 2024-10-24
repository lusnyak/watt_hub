import 'package:flutter/material.dart';

extension TimeOfDayExtension on TimeOfDay {
  DateTime toDate() {
    final today = DateTime.now();
    return DateTime(
      today.year,
      today.month,
      today.day,
      hour,
      minute,
    );
  }
}
