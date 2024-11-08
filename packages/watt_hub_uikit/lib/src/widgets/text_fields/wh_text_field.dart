import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:watt_hub_uikit/src/theme/theme.dart';
import 'package:watt_hub_uikit/src/theme/watt_input_decorations.dart';

class WHTextField extends StatelessWidget {
   const WHTextField._({
    this.label,
    this.hintText,
    this.controller,
    this.maxLines,
    this.onChanged,
    this.keyboardType,
    this.validator,
    this.inputFormatters,
    this.height,
    this.onTap,
  });

  factory WHTextField.singleLine({
    required String label,
    required String hintText,
    TextEditingController? controller,
    ValueChanged<String>? onChanged,
    TextInputType? keyboardType,
    FormFieldValidator<String>? validator,
    List<TextInputFormatter>? inputFormatters,
    GestureTapCallback? onTap,
  }) =>
      WHTextField._(
        label: label,
        hintText: hintText,
        controller: controller,
        onChanged: onChanged,
        keyboardType: keyboardType,
        validator: validator,
        maxLines: 1,
        inputFormatters: inputFormatters,
        onTap: onTap,
      );

  factory WHTextField.multiLine({
    required String label,
    required String hintText,
    required TextEditingController controller,
    ValueChanged<String>? onChanged,
    int? maxLines,
    TextInputType? keyboardType,
    FormFieldValidator<String>? validator,
    List<TextInputFormatter>? inputFormatters,
    double maxHeight = 100,
  }) =>
      WHTextField._(
        label: label,
        hintText: hintText,
        controller: controller,
        onChanged: onChanged,
        maxLines: null,
        keyboardType: keyboardType,
        validator: validator,
        inputFormatters: inputFormatters,
        height: maxHeight,
      );

  final String? label;
  final String? hintText;
  final int? maxLines;
  final TextEditingController? controller;
  final ValueChanged<String>? onChanged;
  final TextInputType? keyboardType;
  final FormFieldValidator<String>? validator;
  final List<TextInputFormatter>? inputFormatters;
  final double? height;
  final GestureTapCallback? onTap;
  Widget _singleLine(BuildContext context) {
    return TextFormField(
      controller: controller,
      style: body16RegularTextStyle,
      decoration: mainInputDecoration.copyWith(
        labelText: label,
        hintText: hintText,
      ),
      inputFormatters: inputFormatters,
      maxLines: maxLines,
      keyboardType: keyboardType,
      onChanged: onChanged,
      validator: validator,
      onTapOutside: (evt) => FocusScope.of(context).unfocus(),
    );
  }

  @override
  Widget build(BuildContext context) {
    if (height != null) {
      return SizedBox(
        height: height,
        child: _singleLine(context),
      );
    }
    return _singleLine(context);
  }
}
