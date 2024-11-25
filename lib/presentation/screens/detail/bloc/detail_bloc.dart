import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import '../../../../domain/models/connector_type/connector_type_model.dart';

part 'detail_event.dart';

part 'detail_state.dart';

part 'detail_bloc.freezed.dart';

@injectable
class DetailBloc extends Bloc<DetailEvent, DetailState> {
  final TextEditingController timeController = TextEditingController();
  final TextEditingController commentController = TextEditingController();

  DetailBloc() : super(const DetailState.loaded()) {
    on<DetailEvent>((event, emit) async {
      await event.map(
        loadDetail: (_) {

          /// zapros cinnector types
          ///
          // emit(const DetailState.loading());

          emit(const DetailState.loaded(

          ));
        },
        daySelected: (e) async {
          final currentState = state;
          if (currentState is _DetailLoadedState) {
            emit(currentState.copyWith(selectedDate: e.selectedDate));
          }
        },
        timeSelected: (e) async {
          final currentState = state;
          if (currentState is _DetailLoadedState) {
            emit(currentState.copyWith(selectedTime: e.selectedTime));
          }
        },
        durationSelected: (e) async {
          final currentState = state;
          if (currentState is _DetailLoadedState) {
            emit(currentState.copyWith(selectedDuration: e.selectedDuration));
          }
        },
        connectorTypeSelected: (e) async {
          final currentState = state;
          if (currentState is _DetailLoadedState) {
            emit(currentState.copyWith(
                selectedConnectorType: e.selectedConnectorType));
          }
        },
      );
    });
  }
}
