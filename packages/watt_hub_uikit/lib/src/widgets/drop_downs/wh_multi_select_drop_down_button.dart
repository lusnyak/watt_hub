import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import '../../../watt_hub_uikit.dart';

class WhMultiSelectDropDownButton<T> extends StatefulWidget {
  const WhMultiSelectDropDownButton({
    super.key,
    required this.items,
    required this.itemLabel,
    this.suffixText,
    this.hintText,
    this.onTab,
    this.selectedItems,
  });

  final List<T> items;
  final String Function(T) itemLabel;
  final String? hintText;
  final String? suffixText;
  final void Function(List<T>)? onTab;
  final List<T>? selectedItems;

  @override
  State<WhMultiSelectDropDownButton<T>> createState() =>
      _WhMultiSelectDropDownButtonState<T>();
}

class _WhMultiSelectDropDownButtonState<T>
    extends State<WhMultiSelectDropDownButton<T>> {
  List<T> selectedItems = <T>[];

  @override
  void initState() {
    super.initState();
    this.selectedItems =
        widget.selectedItems != null ? [...widget.selectedItems!] : <T>[];
  }

  @override
  void didUpdateWidget(covariant WhMultiSelectDropDownButton<T> oldWidget) {
    super.didUpdateWidget(oldWidget);
    this.selectedItems =
        widget.selectedItems != null ? [...widget.selectedItems!] : <T>[];
    if (mounted) setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return DropdownButton2<T>(
      iconStyleData: IconStyleData(
        icon: widget.suffixText != null
            ? Row(
                children: [
                  Text(
                    widget.suffixText!,
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
      hint: Text(
        selectedItems.isEmpty
            ? (widget.hintText ?? "Select items")
            : "${selectedItems.length} selected",
        style: body16RegularTextStyle,
      ),
      items: widget.items.map((item) {
        return DropdownMenuItem(
          value: item,
          enabled: false,
          child: StatefulBuilder(
            builder: (context, menuSetState) {
              final isSelected = selectedItems.contains(item);
              return InkWell(
                onTap: () {
                  debugPrint("$selectedItems selected");
                  if (mounted) {
                    setState(() {
                      if (isSelected) {
                        selectedItems.remove(item);
                      } else {
                        selectedItems.add(item);
                      }
                      widget.onTab?.call(selectedItems);
                    });
                  }
                  menuSetState(() {});
                },
                child: Container(
                  height: double.infinity,
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Row(
                    children: [
                      if (isSelected)
                        const Icon(Icons.check_box_outlined)
                      else
                        const Icon(Icons.check_box_outline_blank),
                      const SizedBox(width: 16),
                      Expanded(
                        child: Text(
                          widget.itemLabel(item),
                          style: const TextStyle(fontSize: 14),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        );
      }).toList(),
      onChanged: (value) {},
      underline: const Divider(
        height: 2,
        color: WattHubColors.primaryGreenColor,
      ),
    );
  }
}
