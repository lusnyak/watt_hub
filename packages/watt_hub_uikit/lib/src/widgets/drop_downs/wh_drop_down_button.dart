import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:watt_hub_uikit/watt_hub_uikit.dart';

class WhDropDownButton<T> extends StatelessWidget {
  const WhDropDownButton({
    super.key,
    required this.items,
    required this.itemLabel,
    this.suffixText,
    this.hintText,
    this.onChanged,
    this.value,
  });

  final List<T> items;
  final String Function(T) itemLabel;
  final String? hintText;
  final ValueChanged<T?>? onChanged;
  final T? value;
  final String? suffixText;

  @override
  Widget build(BuildContext context) {
    return DropdownButton2<T>(
      iconStyleData: IconStyleData(
        icon: suffixText != null
            ? Row(
                children: [
                  Text(
                    suffixText!,
                    style: body16MediumTextStyle.copyWith(
                        color: WattHubColors.primaryGreenColor),
                  ),
                  const Icon(
                    Icons.keyboard_arrow_down,
                  ),
                ],
              )
            : const Icon(
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
      underline: const Divider(
        height: 2,
        color:
            WattHubColors.primaryGreenColor, // Change this to the desired color
      ),
    );
  }
}
