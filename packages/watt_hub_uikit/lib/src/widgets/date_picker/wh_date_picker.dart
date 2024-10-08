import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:watt_hub_uikit/utils/extensions/wh_date_picker_extension.dart';
import 'package:watt_hub_uikit/watt_hub_uikit.dart';

class WhDatePicker {
  final BuildContext context;

  WhDatePicker._(this.context);

  factory WhDatePicker.of(BuildContext cont) => WhDatePicker._(cont);

  Future<TimeOfDay?> showTimePicker({
    TimeOfDay? initialTime,
  }) async {
    return await showCupertinoModalPopup<TimeOfDay?>(
      context: context,
      builder: (BuildContext context) => Container(
        padding: paddingOnlyTop6,
        margin: EdgeInsets.only(
          bottom: MediaQuery.of(context).viewInsets.bottom,
        ),
        color: WattHubColors.whiteColor,
        child: SafeArea(
          top: false,
          child: _WHDatePicker(
            time: initialTime,
            mode: CupertinoDatePickerMode.time,
          ),
        ),
      ),
    );
  }

  Future<DateTime?> showDatePicker({
    DateTime? initialDate,
  }) async {
    return await showCupertinoModalPopup<DateTime?>(
      context: context,
      builder: (BuildContext context) => Container(
        padding: paddingOnlyTop6,
        margin: EdgeInsets.only(
          bottom: MediaQuery.of(context).viewInsets.bottom,
        ),
        color: WattHubColors.whiteColor,
        child: SafeArea(
          top: false,
          child: _WHDatePicker(
            date: initialDate,
            mode: CupertinoDatePickerMode.date,
          ),
        ),
      ),
    );
  }
}

class _WHDatePicker extends StatefulWidget {
  const _WHDatePicker({
    required this.mode,
    this.time,
    this.date,
  });

  final DateTime? date;
  final TimeOfDay? time;
  final CupertinoDatePickerMode mode;

  @override
  State<_WHDatePicker> createState() => _WHDatePickerState();
}

class _WHDatePickerState extends State<_WHDatePicker> {
  DateTime? choosedDate;

  @override
  void initState() {
    super.initState();
    if (widget.mode == CupertinoDatePickerMode.time) {
      choosedDate = widget.time?.toDate();
    } else {
      choosedDate = widget.date;
    }
  }

  void onDateTimeChanged(DateTime date) {
    choosedDate = date;
  }

  void onCancelled() {
    Navigator.of(context).pop(null);
  }

  void onApplied() {
    if (widget.mode == CupertinoDatePickerMode.time) {
      Navigator.of(context).pop(
          choosedDate != null ? TimeOfDay.fromDateTime(choosedDate!) : null);
    } else {
      Navigator.of(context).pop(choosedDate);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextButton(onPressed: onCancelled, child: const Text("Cancel")),
            TextButton(onPressed: onApplied, child: const Text("Apply")),
          ],
        ),
        SizedBox(
          height: 200,
          child: CupertinoDatePicker(
            initialDateTime: choosedDate,
            mode: widget.mode,
            use24hFormat: true,
            showDayOfWeek: true,
            onDateTimeChanged: onDateTimeChanged,
          ),
        ),
      ],
    );
  }
}
