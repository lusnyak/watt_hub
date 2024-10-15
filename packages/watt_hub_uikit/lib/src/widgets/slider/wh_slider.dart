import 'package:flutter/material.dart';

class WHSlider extends StatelessWidget {
  const WHSlider({
    super.key,
    required this.currentSliderValue,
    required this.max,
    this.onChanged,
    this.divisions,
  });

  final double currentSliderValue;
  final double max;
  final ValueChanged<double>? onChanged;
  final int? divisions;

  @override
  Widget build(BuildContext context) {
    debugPrint('$currentSliderValue, currentSliderValue');
    return Slider(
      value: currentSliderValue,
      max: max,
      divisions: divisions,
      label: currentSliderValue.round().toString(),
      onChanged: onChanged,
    );
  }
}
