import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:watt_hub_uikit/watt_hub_uikit.dart';

class WHDatePicker extends StatelessWidget {
  const WHDatePicker({
    super.key,
    this.date,
    required this.onDateTimeChanged,
    required this.mode,
    this.time,
    this.title,
  });

  final String? title;
  final DateTime? date;
  final DateTime? time;
  final ValueChanged<DateTime> onDateTimeChanged;
  final CupertinoDatePickerMode mode;

  void _showDialog(context, child) {
    showCupertinoModalPopup<void>(
      context: context,
      builder: (BuildContext context) => Container(
        height: 216,
        padding: paddingOnlyTop6,
        margin: EdgeInsets.only(
          bottom: MediaQuery.of(context).viewInsets.bottom,
        ),
        color: WattHubColors.whiteColor,
        child: SafeArea(
          top: false,
          child: child,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ElevatedButton(
          onPressed: () => _showDialog(
            context,
            CupertinoDatePicker(
              initialDateTime: date ?? time,
              mode: mode,
              use24hFormat: true,
              showDayOfWeek: true,
              onDateTimeChanged: onDateTimeChanged,
            ),
          ),
          child: Text(
            title ?? '',
            textAlign: TextAlign.center,
          ),
        ),
        40.widthBox,
        Text(
          date != null
              ? '${date?.month}-${date?.day}-${date?.year}'
              : '${time?.hour}:${time?.minute}',
          textAlign: TextAlign.center,
          style: body18MediumTextStyle,
        ),
      ],
    );
  }
}
