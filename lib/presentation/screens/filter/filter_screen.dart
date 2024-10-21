import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:watt_hub/config/locator/service_locator.dart';
import 'package:watt_hub/domain/models/filter/filter_model.dart';
import 'package:watt_hub/presentation/screens/filter/bloc/filter_bloc.dart';
import 'package:watt_hub/presentation/screens/filter/widgets/filter_slider.dart';
import 'package:watt_hub/utils/extensions/localization_extensions.dart';
import 'package:watt_hub/utils/helpers/helpers.dart';
import 'package:watt_hub_uikit/watt_hub_uikit.dart';

@RoutePage()
class FilterScreen extends StatelessWidget {
  const FilterScreen({
    super.key,
    this.selectedConnectorId,
    this.selectedCarId,
    this.rating,
  });

  final int? selectedConnectorId;
  final int? selectedCarId;
  final double? rating;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<FilterBloc>()..add(const FilterEvent.startedEvent()),
      child: FilterView(
        initialSelectedConnectorId: selectedConnectorId,
        initialSelectedCarId: selectedCarId,
        initialRating: rating,
      ),
    );
  }
}

class FilterView extends StatelessWidget {
  const FilterView({
    super.key,
    this.initialSelectedConnectorId,
    this.initialSelectedCarId,
    this.initialRating,
  });

  final int? initialSelectedConnectorId;
  final int? initialSelectedCarId;
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
              initialState: () => nil,
              loadingState: () => const Center(child: CircularProgressIndicator()),
              errorState: (message) => Center(child: Text('Error: $message')),
              loadedState: (
                connectors,
                cars,
                currentSliderValue,
                selectedCar,
                selectedConnector,
              ) {
                final initialSelectedCar = findById(
                  cars,
                  initialSelectedCarId,
                  (car) => car.id,
                );
                final initialSelectedConnector = findById(connectors,
                    initialSelectedConnectorId, (connector) => connector.id);
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
                                .add(FilterEvent.carTypeChangedEvent(value));
                          }
                        },
                        hintText: context.localized.chooseCar,
                        value: selectedCar ?? initialSelectedCar),
                    40.h.heightBox,
                    WhDropDownButton(
                      items: connectors,
                      itemLabel: (connector) => connector.title,
                      onChanged: (value) {
                        if (value != null) {
                          context.read<FilterBloc>().add(
                              FilterEvent.connectorTypeChangedEvent(value));
                        }
                      },
                      hintText: context.localized.chooseConnector,
                      value: selectedConnector ?? initialSelectedConnector,
                    ),
                    40.h.heightBox,
                    FilterSlider(
                        currentSliderValue:
                            currentSliderValue ?? initialRating),
                    const Spacer(),
                    WHElevatedButton.primary(
                      title: context.localized.filter,
                      onPressed: () {
                        context
                            .read<FilterBloc>()
                            .add(const FilterEvent.applyFiltersEvent());
                        context.router.maybePop(
                          FilterModel(
                            connector: selectedConnector,
                            car: selectedCar,
                            rating: currentSliderValue ?? initialRating,
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
