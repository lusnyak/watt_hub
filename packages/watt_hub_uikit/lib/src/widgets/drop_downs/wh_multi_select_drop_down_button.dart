import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import '../../../watt_hub_uikit.dart';

class WhMultiSelectDropDownButton<T> extends StatelessWidget {
  const WhMultiSelectDropDownButton({
    super.key,
    required this.items,
    required this.itemLabel,
    this.suffixText,
    this.hintText,
    this.onChanged,
    this.onTab,
    required this.selectedItems,
    required this.isSelected,
  });

  final List<T> items;
  final String Function(T) itemLabel;
  final String? hintText;
  final ValueChanged<T?>? onChanged;
  final String? suffixText;
  final Function(T)? onTab;
  final List<T> selectedItems;
  final bool isSelected;

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
            const Icon(Icons.keyboard_arrow_down),
          ],
        )
            : const Icon(Icons.keyboard_arrow_down),
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
      items: items.map((item) {
        return DropdownMenuItem(
          value: item,
          enabled: false,
          child: InkWell(
            onTap: () {
              if (onTab != null) {
                onTab!(item);
              }
            },
            child: Container(
              height: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                children: [
                  // Show checkmark if the item is selected
                  if (selectedItems.contains(item))
                    const Icon(Icons.check_box_outlined,
                        color: WattHubColors.primaryGreenColor)
                  else
                    const Icon(Icons.check_box_outline_blank,
                        color: WattHubColors.primaryGreenColor),
                  const SizedBox(width: 16),
                  Expanded(
                    child: Text(
                      itemLabel(item),
                      style: body16MediumTextStyle,
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      }).toList(),
      value: selectedItems.isEmpty ? null : selectedItems.last,
      onChanged: (_) {},
      selectedItemBuilder: (context) {
        return items.map(
              (item) {
            return Text(
              "${selectedItems.length} selected",
              style: body16RegularTextStyle,
              maxLines: 1,
            );
          },
        ).toList();
      },
      underline: const Divider(
        height: 2,
        color: WattHubColors.primaryGreenColor,
      ),
    );
  }
}
