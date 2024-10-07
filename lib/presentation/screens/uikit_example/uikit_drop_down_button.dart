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
        title: const Text('Input or Select Station Address'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            WhDropDownButton<String>(
              items: ["Zora", "Nikolay", "Nune"],
              itemLabel: (String el) => el,
            )
            // // Switch to toggle between dropdown and text input
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //   children: [
            //     const Text('Use Input Station Address?'),
            //     Switch(
            //       value: isManualInput,
            //       onChanged: (value) {
            //         setState(() {
            //           isManualInput = value;
            //           if (!isManualInput) {
            //             streetController
            //                 .clear(); // Clear input if switching back to dropdown
            //           } else {
            //             selectedStreet =
            //                 null; // Clear dropdown selection if switching to manual input
            //           }
            //         });
            //       },
            //     ),
            //   ],
            // ),
            // const SizedBox(height: 20),
            // // Show DropdownButton2 if manual input is disabled, else show TextFormField
            // if (!isManualInput)
            //   DropdownButton2(
            //     iconStyleData: const IconStyleData(
            //       icon: Icon(
            //         Icons.keyboard_arrow_down,
            //       ),
            //       iconSize: 20,
            //       iconEnabledColor: WattHubColors.darkMoodColor,
            //       iconDisabledColor: WattHubColors.darkMoodColor,
            //     ),
            //     isExpanded: true,
            //     hint: Text(
            //       'Select Street',
            //       style: body16RegularTextStyle,
            //     ),
            //     items: streets
            //         .map((street) => DropdownMenuItem<String>(
            //               value: street,
            //               child: Text(
            //                 street,
            //                 style: body16RegularTextStyle,
            //               ),
            //             ))
            //         .toList(),
            //     value: selectedStreet,
            //     onChanged: (value) {
            //       setState(() {
            //         selectedStreet = value;
            //       });
            //     },
            //   )
            // else
            //   TextFormField(
            //     controller: streetController,
            //     onTapOutside: (_) =>
            //         FocusManager.instance.primaryFocus?.unfocus(),
            //     decoration: InputDecoration(
            //       labelText: 'Enter Station Address',
            //       border: OutlineInputBorder(
            //         borderRadius: BorderRadius.circular(10),
            //       ),
            //     ),
            //   ),
            // const SizedBox(height: 20),
            // // Display the selected or inputted street
            // Text(
            //   'Selected/Inputted Street: ${isManualInput ? streetController.text : selectedStreet ?? 'None'}',
            //   style: body18RegularTextStyle,
            // ),
          ],
        ),
      ),
    );
  }
}
