import 'package:flutter/material.dart';
import 'package:watt_hub_uikit/src/theme/watt_input_decorations.dart';

class WHTextField extends StatelessWidget {
  const WHTextField({
    super.key,
    required this.label,
    required this.hintText,
    required this.controller,
    this.onChanged,
  });

  final String label;
  final String hintText;
  final TextEditingController controller;
  final ValueChanged<String>? onChanged;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: mainInputDecoration.copyWith(
        labelText: label,
        hintText: hintText,
      ),
      onChanged: onChanged,
    );
  }
}
