import 'package:flutter/material.dart';
import 'package:watt_hub_uikit/watt_hub_uikit.dart';

class UikitDropDownButton extends StatefulWidget {
  const UikitDropDownButton({super.key, this.value, this.onChanged});

  final String? value;

  final ValueChanged<String?>? onChanged;

  @override
  State<UikitDropDownButton> createState() => _UikitDropDownButtonState();
}

class _UikitDropDownButtonState extends State<UikitDropDownButton> {
  final List<String> streets = [
    'Aram Khachatryan Street',
    'Paruyr Sevak Street',
    'Sayat-Nova Avenue',
  ];
  String? selectedStreet;
  final TextEditingController streetController = TextEditingController();

  bool isManualInput = false; // false = dropdown, true = manual input

  @override
  void dispose() {
    streetController
        .dispose(); // Clean up the controller when the widget is disposed
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleTextStyle: body16RegularTextStyle,
        title: const Text('Dropdown 2'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            WhDropDownButton<String>(
              items: streets,
              itemLabel: (String el) => el,
              onChanged: (value) => debugPrint(value),
              suffixText: 'AM',
            )
          ],
        ),
      ),
    );
  }
}
