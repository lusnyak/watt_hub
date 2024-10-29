import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';

part 'add_station_event.dart';

part 'add_station_state.dart';

part 'add_station_bloc.freezed.dart';

@injectable
class AddStationBlock extends Bloc<AddStationEvent, AddStationState> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController hourlyRateController = TextEditingController();
  final TextEditingController kilowattController = TextEditingController();
  final formkey = GlobalKey<FormState>();

  AddStationBlock() : super(const AddStationState.initial()) {
    final connectors = connectorsData
        .map((connectorJson) => ConnectorTypeModel.fromJson(connectorJson))
        .toList();
    on<AddStationEvent>((event, emit) async {
      await event.map(
        started: (_) async {
          emit(const AddStationState.loading());
          try {
            await Future.delayed(const Duration(seconds: 2));
            emit(AddStationState.loaded(connectors));
          } catch (e) {
            emit(AddStationState.error(e.toString()));
          }
        },
      );
    });
  }
}
