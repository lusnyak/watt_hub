import 'package:flutter/material.dart';
import 'package:watt_hub_uikit/src/theme/watt_input_decorations.dart';

/// TODO: - separate single and multiline use factory constructors

class WHTextField extends StatelessWidget {
  const WHTextField._({
    required this.label,
    required this.hintText,
    required this.controller,
    this.maxLines,
    this.onChanged,
    this.keyboardType,
    this.validator,
    this.onTapOutside,
  });

  factory WHTextField.singleLine({
    required String label,
    required String hintText,
    required TextEditingController controller,
    ValueChanged<String>? onChanged,
    TextInputType? keyboardType,
    FormFieldValidator<String>? validator,
    TapRegionCallback? onTapOutside,
  }) =>
      WHTextField._(
        label: label,
        hintText: hintText,
        controller: controller,
        onChanged: onChanged,
        maxLines: 1,
        keyboardType: keyboardType,
        validator: validator,
        onTapOutside: onTapOutside,

        /// hanel
      );

  factory WHTextField.multiLine({
    required String label,
    required String hintText,
    required TextEditingController controller,
    ValueChanged<String>? onChanged,
    int? minLines,

    /// hanel
    int? maxLines,

    /// hanel
    TextInputType? keyboardType,
    FormFieldValidator<String>? validator,
    TapRegionCallback? onTapOutside,
  }) =>
      WHTextField._(
        label: label,
        hintText: hintText,
        controller: controller,
        onChanged: onChanged,
        maxLines: null,
        keyboardType: keyboardType,
        validator: validator,
        onTapOutside: onTapOutside,
      );

  final String label;
  final String hintText;
  final int? maxLines;
  final TextEditingController controller;
  final ValueChanged<String>? onChanged;
  final TextInputType? keyboardType;
  final FormFieldValidator<String>? validator;

  /// TODO: - petq che hanel durs , actioni depqum pakel keyboardy
  final TapRegionCallback? onTapOutside;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: mainInputDecoration.copyWith(
        labelText: label,
        hintText: hintText,
      ),

      /// TODO: - inputFormatters vorpes parameter durs hanel
      inputFormatters: [],
      minLines: 1,

      /// TODO:-
      maxLines: maxLines ?? 1,
      keyboardType: keyboardType,
      onChanged: onChanged,
      validator: validator,
      onTapOutside: onTapOutside,
    );
  }
}
