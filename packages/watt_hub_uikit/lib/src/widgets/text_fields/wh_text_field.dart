import 'package:flutter/material.dart';
import 'package:watt_hub_uikit/src/theme/watt_input_decorations.dart';

/// TODO: - separate single and multiline use factory constructors
///
class WHTextField extends StatelessWidget {
  const WHTextField._({
    required this.label,
    required this.hintText,
    required this.controller,
    this.maxLines,
    this.onChanged,
  });

  factory WHTextField.singleLine({
    required String label,
    required String hintText,
    required TextEditingController controller,
    ValueChanged<String>? onChanged,
  }) =>
      WHTextField._(
        label: label,
        hintText: hintText,
        controller: controller,
        onChanged: onChanged,
      );

  factory WHTextField.multiLine({
    required String label,
    required String hintText,
    required TextEditingController controller,
    ValueChanged<String>? onChanged,
    int? minLines,
    int? maxLines,
  }) =>
      WHTextField._(
        label: label,
        hintText: hintText,
        controller: controller,
        onChanged: onChanged,
        maxLines: maxLines,
      );

  final String label;
  final String hintText;
  final int? maxLines;
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
      minLines: 1,
      maxLines: maxLines ?? 1,
      onChanged: onChanged,
    );
  }
}
