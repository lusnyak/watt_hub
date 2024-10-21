import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:watt_hub/data/fake_data/car_types_data/car_types_data.dart';
import 'package:watt_hub/data/fake_data/connectors_data/connectors_data.dart';
import 'package:watt_hub/data/local/shared_preferences/shared_preferences_service.dart';
import 'package:watt_hub/domain/models/car_type/car_type_model.dart';
import 'package:watt_hub/domain/models/connector_type/connector_type_model.dart';

part 'filter_event.dart';
part 'filter_state.dart';
part 'filter_bloc.freezed.dart';

@injectable
class FilterBloc extends Bloc<FilterEvent, FilterState> {
  FilterBloc() : super(const FilterState.initialState()) {
    on<FilterEvent>((event, emit) {
      event.map(
        startedEvent: (_) {
          emit(const FilterState.loadingState());

          final connectors = connectorsData
              .map(
                  (connectorJson) => ConnectorTypeModel.fromJson(connectorJson))
              .toList();

          final cars = carTypesData
              .map((carJson) => CarTypeModel.fromJson(carJson))
              .toList();

          emit(FilterState.loadedState(connectors, cars, ratingValue: null));
        },
        sliderValueChangedEvent: (event) {
          if (state is _LoadedState) {
            final currentState = state as _LoadedState;
            emit(currentState.copyWith(ratingValue: event.newValue));
          }
        },
        carTypeChangedEvent: (event) {
          if (state is _LoadedState) {
            final currentState = state as _LoadedState;
            emit(currentState.copyWith(selectedCar: event.selectedCar));
          }
        },
        connectorTypeChangedEvent: (event) {
          if (state is _LoadedState) {
            final currentState = state as _LoadedState;
            emit(currentState.copyWith(
                selectedConnector: event.selectedConnector));
          }
        },
        applyFiltersEvent: (_) async {
          if (state is _LoadedState) {
            final currentState = state as _LoadedState;
            final selectedConnector = currentState.selectedConnector;
            final selectedCar = currentState.selectedCar;
            final currentSliderValue = currentState.ratingValue;

            if (selectedConnector?.id != null) {
              await SharedPreferencesService.instance
                  .setSelectedFilterConnectorId(selectedConnector!.id);
            }

            if (selectedCar?.id != null) {
              await SharedPreferencesService.instance
                  .setSelectedFilterCarId(selectedCar!.id);
            }

            if (currentSliderValue != null) {
              await SharedPreferencesService.instance
                  .setFilterRating(currentSliderValue);
            }
          }
        },
      );
    });
  }
}
