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
