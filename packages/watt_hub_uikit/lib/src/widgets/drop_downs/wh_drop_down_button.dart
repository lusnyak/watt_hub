import 'package:flutter/material.dart';
import 'package:watt_hub_uikit/watt_hub_uikit.dart';

class WhDropDownButton<T> extends StatelessWidget {
  const WhDropDownButton({
    super.key,
    required this.items,
    required this.itemLabel,
    this.hintText, this.onChanged, this.value,
  });

  final List<T> items;
  final String Function(T) itemLabel;
  final String? hintText;
  final ValueChanged<T?>? onChanged;
  final T? value;

  @override
  Widget build(BuildContext context) {
    return DropdownButton2<T>(
      iconStyleData: const IconStyleData(
        icon: Icon(
          Icons.keyboard_arrow_down,
        ),
        iconSize: 20,
        iconEnabledColor: WattHubColors.darkMoodColor,
        iconDisabledColor: WattHubColors.darkMoodColor,
      ),
      isExpanded: true,
      hint: hintText != null
          ? Text(
              hintText!,
              style: body16RegularTextStyle,
            )
          : null,
      items: items
          .map(
            (element) => DropdownMenuItem<T>(
              value: element,
              child: Text(
                itemLabel(element),
                style: body16RegularTextStyle,
              ),
            ),
          )
          .toList(),
      value: value,
      onChanged: onChanged,
    );
  }
}
