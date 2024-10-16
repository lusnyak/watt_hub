import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:watt_hub/config/locator/service_locator.dart';
import 'package:watt_hub/data/local/shared_preferences/shared_preferences_service.dart';
import 'package:watt_hub/domain/models/filter/filter_model.dart';
import 'package:watt_hub/presentation/screens/filter/bloc/filter_bloc.dart';
import 'package:watt_hub/presentation/screens/filter/widgets/filter_slider.dart';
import 'package:watt_hub/utils/extensions/localization_extensions.dart';
import 'package:watt_hub_uikit/watt_hub_uikit.dart';

@RoutePage()
class FilterScreen extends StatelessWidget {
  const FilterScreen({
    super.key,
    this.selectedConnector,
    this.selectedCar,
    this.rating,
  });

  final String? selectedConnector;
  final String? selectedCar;
  final double? rating;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<FilterBloc>()..add(const FilterEvent.started()),
      child: FilterView(
        initialSelectedConnector: selectedConnector,
        initialSelectedCar: selectedCar,
        initialRating: rating,
      ),
    );
  }
}

class FilterView extends StatelessWidget {
  const FilterView({
    super.key,
    this.initialSelectedConnector,
    this.initialSelectedCar,
    this.initialRating,
  });

  final String? initialSelectedConnector;
  final String? initialSelectedCar;
  final double? initialRating;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          context.localized.filter,
          style: body24MediumTextStyle,
        ),
      ),
      body: SafeArea(
        child: BlocBuilder<FilterBloc, FilterState>(
          builder: (context, state) {
            return state.when(
              initial: () => nil,
              loading: () => const Center(child: CircularProgressIndicator()),
              error: (message) => Center(child: Text('Error: $message')),
              loaded: (
                connectors,
                cars,
                currentSliderValue,
                selectedCar,
                selectedConnector,
              ) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    WhDropDownButton(
                      items: cars,
                      itemLabel: (car) => car.title,
                      onChanged: (value) {
                        if (value != null) {
                          context
                              .read<FilterBloc>()
                              .add(FilterEvent.carTypeChanged(value));
                        }
                      },
                      value: selectedCar,
                    ),
                    40.h.heightBox,
                    WhDropDownButton(
                      items: connectors,
                      itemLabel: (connector) => connector.title,
                      onChanged: (value) {
                        if (value != null) {
                          context
                              .read<FilterBloc>()
                              .add(FilterEvent.connectorTypeChanged(value));
                        }
                      },
                      value: selectedConnector ?? selectedConnector,
                    ),
                    40.h.heightBox,
                    FilterSlider(currentSliderValue: currentSliderValue),
                    const Spacer(),
                    WHElevatedButton.primary(
                      title: context.localized.filter,
                      onPressed: () {
                        SharedPreferencesService().setString(
                            'selectedConnector', selectedConnector!.title);
                        SharedPreferencesService()
                            .setString('selectedCar', selectedCar!.title);
                        SharedPreferencesService()
                            .setDouble('rating', currentSliderValue);
                        Navigator.pop(
                          context,
                          FilterModel(
                            connector: selectedConnector,
                            car: selectedCar,
                            rating: initialRating ?? currentSliderValue,
                          ),
                        );
                      },
                    )
                  ],
                ).paddingAll(20.r);
              },
            );
          },
        ),
      ),
    );
  }
}
