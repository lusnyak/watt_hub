import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:watt_hub/presentation/screens/filter/bloc/filter_bloc.dart';
import 'package:watt_hub/utils/extensions/localization_extensions.dart';
import 'package:watt_hub_uikit/watt_hub_uikit.dart';

class FilterSlider extends StatelessWidget {
  const FilterSlider({
    super.key,
    this.currentSliderValue,
  });

  final double? currentSliderValue;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          context.localized.rating,
          style: body18MediumTextStyle,
        ),
        WHSlider(
          currentSliderValue: currentSliderValue ?? 0,
          max: 5,
          divisions: 5,
          onChanged: (value) {
            context
                .read<FilterBloc>()
                .add(FilterEvent.sliderValueChangedEvent(value));
          },
        )
      ],
    );
  }
}
