import 'package:flutter/material.dart';
import 'package:watt_hub_localization/watt_hub_localization.dart';

DateTime dateTimeFromTimeOfDay(TimeOfDay time) {
  final now = DateTime.now(); // Get the current date
  return DateTime(now.year, now.month, now.day, time.hour, time.minute);
}

String formatDateTime(DateTime? dateTime) {
  if (dateTime == null) return '';  // Return an empty string or your fallback value if null
  return DateFormat('HH:mm').format(dateTime);  // Format the DateTime as HH:mm
}