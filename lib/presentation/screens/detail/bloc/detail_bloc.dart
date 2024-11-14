import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import '../../../../domain/models/connector_type/connector_type_model.dart';
part 'detail_event.dart';
part 'detail_state.dart';

class DetailBloc extends Bloc<DetailEvent, DetailState> {
  // final TextEditingController timeController;
  final TextEditingController timeController;
  final TextEditingController commentController;
  DetailBloc()
      : timeController = TextEditingController(),
        commentController=TextEditingController(),
        super(DetailState()) {
    on<DaySelected>((event, emit) {
      emit(state.copyWith(selectedDay: event.selectedDate));
    });

    on<TimeSelected>((event, emit) {
      timeController.text = event.selectedTime;
      emit(state.copyWith(selectedTime: event.selectedTime));
    });
    on<DurationSelected>((event, emit) {
      emit(state.copyWith(selectedDuration: event.duration));
    });
    on<ConnectorTypeSelected>((event, emit) {
      emit(state.copyWith(selectedConnectorType: event.connectorType));
    });
  }

  @override
  Future<void> close() {
    timeController.dispose();
    commentController.dispose();
    return super.close();
  }
}

