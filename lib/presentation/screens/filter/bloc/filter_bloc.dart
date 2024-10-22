import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:watt_hub/config/config.dart';
import 'package:watt_hub/data/local/local.dart';
import 'package:watt_hub/data/fake_data/car_types_data/car_types_data.dart';
import 'package:watt_hub/data/fake_data/connectors_data/connectors_data.dart';
import 'package:watt_hub/data/local/filter_storage/filter_storage_impl.dart';
import 'package:watt_hub/domain/models/car_type/car_type_model.dart';
import 'package:watt_hub/domain/models/connector_type/connector_type_model.dart';
import 'package:watt_hub/domain/models/filter/filter_model.dart';

part 'filter_event.dart';
part 'filter_state.dart';
part 'filter_bloc.freezed.dart';

@injectable
class FilterBloc extends Bloc<FilterEvent, FilterState> {
  FilterBloc() : super(const FilterState.initialState()) {
    on<_StartedEvent>(_onStartedEvent);
    on<_SliderValueChangedEvent>(_onSliderValueChanged);
    on<_CarTypeChangedEvent>(_onCarTypeChanged);
    on<_ConnectorTypeChangedEvent>(_onConnectorTypeChanged);
    on<_ApplyFiltersEvent>(_onApplyFiltersEvent);
  }

  Future<void> _onStartedEvent(
      _StartedEvent event, Emitter<FilterState> emit) async {
    emit(const FilterState.loadingState());

    try {
      final filterData = await getIt<FilterStorage>().readFilterData();

      final connectors = connectorsData
          .map((connectorJson) => ConnectorTypeModel.fromJson(connectorJson))
          .toList();

      final cars = carTypesData
          .map((carJson) => CarTypeModel.fromJson(carJson))
          .toList();

      emit(FilterState.loadedState(
        connectors,
        cars,
        initialRating: filterData?.rating,
        initialSelectedCarId: filterData?.carId,
        initialSelectedConnectorId: filterData?.connectorId,
      ));
    } catch (e) {
      emit(const FilterState.errorState('Failed to load filter data'));
    }
  }

  void _onSliderValueChanged(
      _SliderValueChangedEvent event, Emitter<FilterState> emit) {
    if (state is _LoadedState) {
      final currentState = state as _LoadedState;
      emit(currentState.copyWith(initialRating: event.newValue));
    }
  }

  void _onCarTypeChanged(
      _CarTypeChangedEvent event, Emitter<FilterState> emit) {
    if (state is _LoadedState) {
      final currentState = state as _LoadedState;
      emit(currentState.copyWith(initialSelectedCarId: event.selectedCar?.id));
    }
  }

  void _onConnectorTypeChanged(
      _ConnectorTypeChangedEvent event, Emitter<FilterState> emit) {
    if (state is _LoadedState) {
      final currentState = state as _LoadedState;
      emit(currentState.copyWith(
          initialSelectedConnectorId: event.selectedConnector?.id));
    }
  }

  Future<void> _onApplyFiltersEvent(
      _ApplyFiltersEvent event, Emitter<FilterState> emit) async {
    if (state is _LoadedState) {
      final currentState = state as _LoadedState;

      final filterData = FilterModel(
        connectorId: currentState.initialSelectedConnectorId,
        carId: currentState.initialSelectedCarId,
        rating: currentState.initialRating,
      );

      await FilterStorageImpl().saveFilterData(filterData);
    }
  }
}
