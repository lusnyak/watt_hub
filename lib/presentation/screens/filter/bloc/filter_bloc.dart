import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
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
          final connectors = <ConnectorTypeModel>[];
          emit(FilterState.loaded(connectors, currentSliderValue: 1));
        },
        sliderValueChanged: (event) {
          if (state is _LoadedState) {
            final currentState = state as _LoadedState;
            emit(currentState.copyWith(currentSliderValue: event.newValue));
          }
        },
      );
    });
  }
}
