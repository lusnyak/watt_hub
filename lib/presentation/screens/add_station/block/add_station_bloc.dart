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

  AddStationBlock() : super(const AddStationState.initial()) {
    on<AddStationEvent>((event, emit) async {
      await event.map(
        started: (_) async {
          emit(const AddStationState.loading());
          try {
            await Future.delayed(const Duration(seconds: 2));
            emit(const AddStationState.loaded());
          } catch (e) {
            emit(AddStationState.error(e.toString()));
          }
        },
        imagesSelected: (e) async {
          final currentState = state;
          if (currentState is _LoadedState) {
            final updatedImages = List<File>.from(currentState.images ?? [])
              ..addAll(e.images);
            emit(AddStationState.loaded(images: updatedImages));
          } else {
            emit(AddStationState.loaded(images: e.images));
          }
        },
        removeImage: (e) async {
          if (state is _LoadedState) {
            final loadedState = state as _LoadedState;
            final updatedImages = List<File>.from(loadedState.images ?? []);
            if (e.index >= 0 && e.index < updatedImages.length) {
              updatedImages.removeAt(e.index);
              emit(AddStationState.loaded(images: updatedImages));
            }
          }
        },

      );
    });
  }
}
