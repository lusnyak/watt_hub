import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:watt_hub/data/fake_data/car_types_data/car_types_data.dart';
import 'package:watt_hub/data/fake_data/connectors_data/connectors_data.dart';
import 'package:watt_hub/domain/models/car_type/car_type_model.dart';
import 'package:watt_hub/domain/models/connector_type/connector_type_model.dart';

part 'filter_event.dart';
part 'filter_state.dart';
part 'filter_bloc.freezed.dart';

@injectable
class FilterBloc extends Bloc<FilterEvent, FilterState> {
  FilterBloc() : super(const FilterState.initial()) {
    on<FilterEvent>((event, emit) {
      event.map(
        started: (_) {
          emit(const FilterState.loading());

          final connectors = connectorsData
              .map(
                  (connectorJson) => ConnectorTypeModel.fromJson(connectorJson))
              .toList();

          final cars = carTypesData
              .map((carJson) => CarTypeModel.fromJson(carJson))
              .toList();

          emit(FilterState.loaded(connectors, cars, currentSliderValue: 1));
        },
        sliderValueChanged: (event) {
          if (state is _LoadedState) {
            final currentState = state as _LoadedState;
            emit(currentState.copyWith(currentSliderValue: event.newValue));
          }
        },
        carTypeChanged: (event) {
          if (state is _LoadedState) {
            final currentState = state as _LoadedState;
            emit(currentState.copyWith(selectedCar: event.selectedCar));
          }
        },
        connectorTypeChanged: (event) {
          if (state is _LoadedState) {
            final currentState = state as _LoadedState;
            emit(currentState.copyWith(
                selectedConnector: event.selectedConnector));
          }
        },
      );
    });
  }
}
