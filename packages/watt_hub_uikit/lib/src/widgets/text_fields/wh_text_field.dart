import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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
    this.inputFormatters,
    this.multiLine = false,
  });

  factory WHTextField.singleLine({
    required String label,
    required String hintText,
    required TextEditingController controller,
    ValueChanged<String>? onChanged,
    TextInputType? keyboardType,
    FormFieldValidator<String>? validator,
    List<TextInputFormatter>? inputFormatters,
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
    bool? multiLine,
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
        multiLine: true,
      );

  final String label;
  final String hintText;
  final int? maxLines;
  final TextEditingController controller;
  final ValueChanged<String>? onChanged;
  final TextInputType? keyboardType;
  final FormFieldValidator<String>? validator;
  final List<TextInputFormatter>? inputFormatters;
  final bool? multiLine;

  /// TODO: - petq che hanel durs , actioni depqum pakel keyboardy - done

  Widget _singleLine(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: mainInputDecoration.copyWith(
        labelText: label,
        hintText: hintText,
      ),

      /// TODO: - inputFormatters vorpes parameter durs hanel - done
      inputFormatters: inputFormatters,
      minLines: maxLines,
      maxLines: maxLines,
      keyboardType: keyboardType,
      onChanged: onChanged,
      validator: validator,
      onTapOutside: (evt) => FocusScope.of(context).unfocus(),
    );
  }

  Widget _multileLine(BuildContext context) {
    return SizedBox(
      height: 100.0,
      child: TextFormField(
        controller: controller,
        decoration: mainInputDecoration.copyWith(
          labelText: label,
          hintText: hintText,
        ),

        /// TODO: - inputFormatters vorpes parameter durs hanel - done
        inputFormatters: inputFormatters,
        minLines: maxLines,
        maxLines: maxLines,
        keyboardType: keyboardType,
        onChanged: onChanged,
        validator: validator,
        onTapOutside: (evt) => FocusScope.of(context).unfocus(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return multiLine == true ? _multileLine(context) : _singleLine(context);
  }
}
