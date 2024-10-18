import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'add_station_event.dart';
part 'add_station_state.dart';
part 'add_station_block.freezed.dart';

class AddStationBlock extends Bloc<AddStationEvent, AddStationState> {
  AddStationBlock()
       : super(const AddStationState.initial()) {
    on<AddStationEvent>((event, emit) {
      emit(const AddStationState.loading());
    });
  }
}