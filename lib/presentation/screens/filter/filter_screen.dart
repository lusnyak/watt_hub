import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:watt_hub/config/locator/service_locator.dart';
import 'package:watt_hub/presentation/screens/filter/bloc/filter_bloc.dart';
import 'package:watt_hub/presentation/screens/filter/widgets/filter_slider.dart';
import 'package:watt_hub/utils/extensions/localization_extensions.dart';
import 'package:watt_hub/utils/helpers/data_helper.dart';
import 'package:watt_hub_uikit/watt_hub_uikit.dart';

@RoutePage()
class FilterScreen extends StatelessWidget {
  const FilterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<FilterBloc>()..add(const FilterEvent.startedEvent()),
      child: const FilterView(),
    );
  }
}

class FilterView extends StatelessWidget {
  const FilterView({super.key});
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
        child: BlocConsumer<FilterBloc, FilterState>(
          listener: (context, state) {
            if (state is FilterErrorState) {
              context.showSnackBar(message: state.message);
            }
          },
          builder: (context, state) {
            final (
              connectors,
              cars,
              filterData,
            ) = state.maybeWhen(
              orElse: () => ([], [], null),
              loaded: (connectors, cars, filterData) =>
                  (connectors, cars, filterData),
            );

            final initialSelectedCar = findById(
              cars,
              filterData?.carId,
              (car) => car.id,
            );
            final initialSelectedConnector = findById(connectors,
                filterData?.connectorId, (connector) => connector.id);

            return Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                WhDropDownButton(
                  items: cars,
                  itemLabel: (car) => car.title ?? '',
                  onChanged: (value) {
                    if (value != null) {
                      context
                          .read<FilterBloc>()
                          .add(FilterEvent.carTypeChangedEvent(value));
                    }
                  },
                  hintText: context.localized.chooseCar,
                  value: initialSelectedCar,
                ),
                40.h.heightBox,
                WhDropDownButton(
                  items: connectors,
                  itemLabel: (connector) => connector.title ?? '',
                  onChanged: (value) {
                    if (value != null) {
                      context
                          .read<FilterBloc>()
                          .add(FilterEvent.connectorTypeChangedEvent(value));
                    }
                  },
                  hintText: context.localized.chooseConnector,
                  value: initialSelectedConnector,
                ),
                40.h.heightBox,
                FilterSlider(currentSliderValue: filterData?.rating),
                const Spacer(),
                WHElevatedButton.primary(
                  title: context.localized.filter,
                  onPressed: () {
                    context.read<FilterBloc>().add(
                          FilterEvent.applyFiltersEvent(
                              () => context.router.maybePop()),
                        );
                  },
                )
              ],
            ).paddingAll(20.r);
          },
        ),
      ),
    );
  }
}
