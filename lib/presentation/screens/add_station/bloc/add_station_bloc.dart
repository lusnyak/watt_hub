import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';

import '../../../../data/fake_data/connectors_data/connectors_data.dart';
import '../../../../domain/models/connector_type/connector_type_model.dart';

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
            emit(AddStationState.loaded(connectors,false));
          } catch (e) {
            emit(AddStationState.error(e.toString()));
          }
        },
        imagesSelected: (e) async {
          final currentState = state;
          if (currentState is _LoadedState) {
            final updatedImages = List<File>.from(currentState.images ?? [])
              ..addAll(e.images);
            emit(currentState.copyWith(
                images: updatedImages, connectors: currentState.connectors));
          } else {
            emit(AddStationState.loaded(images: e.images, connectors,false));
          }
        },
        removeImage: (e) async {
          if (state is _LoadedState) {
            final loadedState = state as _LoadedState;
            final updatedImages = List<File>.from(loadedState.images ?? []);
            if (e.index >= 0 && e.index < updatedImages.length) {
              updatedImages.removeAt(e.index);
              emit(loadedState.copyWith(
                  images: updatedImages, connectors: connectors));
            }
          }
        },
        getAddress: (e) async {
          if (state is _LoadedState) {
            final currentState = state as _LoadedState;
            emit(currentState.copyWith(address: e.address));
          }
        },
        connectorTypeChangedEvent: (e) async {
          if (state is _LoadedState) {
            final currentState = state as _LoadedState;
            emit(currentState.copyWith(
                initialSelectedConnectorId: e.selectedConnector?.id));
          }
        },
        startTimeSelected: (e) async {
          if (state is _LoadedState) {
            final currentState = state as _LoadedState;
            emit(currentState.copyWith(startTime: e.startTime));
          }
        },
        endTimeSelected: (e) async {
          if (state is _LoadedState) {
            final currentState = state as _LoadedState;
            emit(currentState.copyWith(endTime: e.endTime));
          }
        },
        createStation: (_CreateStationEvent value) {},

        connectorMultiTypeChangedEvent: (e) async {
          if (state is _LoadedState) {
            final currentState = state as _LoadedState;
            final selectedList = List<ConnectorTypeModel>.from(currentState.selectedList ?? []);

           final isSelected =  selectedList.contains(e.selected);
            if (isSelected) {
              selectedList.remove(e.selected);
            } else {
              selectedList.add(e.selected);
            }
            emit(
              currentState.copyWith(
                selectedList: selectedList,
                  isSelected:isSelected
              ),
            );
          }
        },

        deleteSelectedConnector: (e) async {
          if (state is _LoadedState) {
            final currentState = state as _LoadedState;
            final updatedSelected = List<ConnectorTypeModel>.from(currentState.selectedList ?? []);;
            updatedSelected.remove(e.connector);
            emit(currentState.copyWith(selectedList: updatedSelected));
          }
        },
      );
    });
  }
}
