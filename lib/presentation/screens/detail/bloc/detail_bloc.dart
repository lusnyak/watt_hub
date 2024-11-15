import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import '../../../../domain/models/connector_type/connector_type_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'detail_event.dart';
part 'detail_state.dart';
part 'detail_bloc.freezed.dart';
class DetailBloc extends Bloc<DetailEvent, DetailState> {
  final TextEditingController timeController;
  final TextEditingController commentController;
  DetailBloc()
      : timeController = TextEditingController(),
        commentController=TextEditingController(),
        super(DetailState.initial()) {
    on<DaySelected>((event, emit) {
      emit(state.copyWith(selectedDay: event.selectedDate));
    });

    on<TimeSelected>((event, emit) {
      timeController.text = event.selectedTime;
      emit(state.copyWith(selectedTime: event.selectedTime));
    });
    on<DurationSelected>((event, emit) {
      emit(state.copyWith(selectedDuration: event.selectedDuration));
    });
    on<ConnectorTypeSelected>((event, emit) {
      emit(state.copyWith(selectedConnectorType: event.selectedConnectorType));
    });
  }

  @override
  Future<void> close() {
    timeController.dispose();
    commentController.dispose();
    return super.close();
  }
}
