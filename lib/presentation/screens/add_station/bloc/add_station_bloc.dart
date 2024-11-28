import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:watt_hub/config/locator/service_locator.dart';
import 'package:watt_hub/data/fake_data/connectors_data/connectors_data.dart';
import 'package:watt_hub/data/repository/station_repository.dart';
import 'package:watt_hub/domain/body_requests_model/add_station/add_station_model.dart';
import 'package:watt_hub/domain/models/connector_type/connector_type_model.dart';
import 'package:watt_hub/presentation/screens/add_station/view_model/add_station_view_model.dart';

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

            /// working
            // try {
            //   final carTypesGet = await getIt<CarRemoteApi>()
            //       .carTypes();
            //   // emit(AddStationState.success(result));
            //   debugPrint("$carTypesGet carTypesGet");
            // } catch (e) {
            //   emit(AddStationState.error(e.toString()));
            // }
            /// working
//             try {
//               final carModelsGet = await getIt<CarRemoteApi>()
//                   .carModels();
//               // emit(AddStationState.success(result));
//               debugPrint("$carModelsGet carModelsGet");
//             } catch (e) {
//               emit(AddStationState.error(e.toString()));
//             }

            /// working
            // try {
            //   final getCars = await getIt<CarRemoteApi>()
            //       .getCars();
            //   // emit(AddStationState.success(result));
            //   debugPrint("$getCars getCarsgetCars");
            // } catch (e) {
            //   emit(AddStationState.error(e.toString()));
            // }

            // working
            // try {
            //   final getMyCar = await getIt<CarRemoteApi>()
            //       .getMyCar();
            //   // emit(AddStationState.success(result));
            //   debugPrint("$getMyCar getMyCar");
            // } catch (e) {
            //   emit(AddStationState.error(e.toString()));
            // }

            //working
            // try {
            //   final getUserCars = await getIt<CarRemoteApi>()
            //       .getUserCars("47");
            //   // emit(AddStationState.success(result));
            //   debugPrint("$getUserCars getUserCars");
            // } catch (e) {
            //   emit(AddStationState.error(e.toString()));
            // }
            //
            emit(AddStationState.loaded(
                stationData: AddStationViewModel(connectors: connectors)));
          } catch (e) {
            emit(AddStationState.error(e.toString()));
          }
        },
        imagesSelected: (e) async {
          final currentState = state;
          if (currentState is _LoadedState) {
            final imagesData = currentState.stationData?.copyWith(
                    images:
                        List<File>.from(currentState.stationData?.images ?? [])
                          ..addAll(e.images)) ??
                AddStationViewModel(
                  images: e.images,
                );
            emit(currentState.copyWith(stationData: imagesData));
          }
        },
        removeImage: (e) async {
          if (state is _LoadedState) {
            final loadedState = state as _LoadedState;
            final updatedImages = loadedState.stationData?.copyWith(
                    images: List<File>.from(
                        loadedState.stationData?.images ?? [])) ??
                AddStationViewModel(
                    images:
                        List<File>.from(loadedState.stationData?.images ?? []));
            if (e.index >= 0 && e.index < updatedImages.images!.length) {
              updatedImages.images?.removeAt(e.index);
              emit(loadedState.copyWith(stationData: updatedImages));
            }
          }
        },
        getAddress: (e) async {
          if (state is _LoadedState) {
            final currentState = state as _LoadedState;
            emit(currentState.copyWith(
              stationData: currentState.stationData?.copyWith(
                address: e.address,
                longitude: e.longitude,
                latitude: e.latitude,
              ),
            ));
          }
        },
        connectorTypeChangedEvent: (e) async {
          if (state is _LoadedState) {
            final currentState = state as _LoadedState;
            final selectedConnectorData = currentState.stationData?.copyWith(
                    initialSelectedConnectorId: e.selectedConnector!.id) ??
                AddStationViewModel(
                    initialSelectedConnectorId: e.selectedConnector?.id);
            emit(currentState.copyWith(stationData: selectedConnectorData));
          }
        },
        startTimeSelected: (e) async {
          if (state is _LoadedState) {
            final currentState = state as _LoadedState;
            final startTimeData =
                currentState.stationData?.copyWith(startTime: e.startTime) ??
                    AddStationViewModel(startTime: e.startTime);

            emit(currentState.copyWith(stationData: startTimeData));
          }
        },
        endTimeSelected: (e) async {
          if (state is _LoadedState) {
            final currentState = state as _LoadedState;
            final endTimeData =
                currentState.stationData?.copyWith(endTime: e.endTime) ??
                    AddStationViewModel(endTime: e.endTime);
            emit(currentState.copyWith(stationData: endTimeData));
          }
        },
        connectorMultiTypeChangedEvent: (e) async {
          debugPrint("${e.selectedItems} e");
          if (state is _LoadedState) {
            final currentState = state as _LoadedState;
            List<ConnectorTypeModel> updatedList = List.from(currentState.stationData?.selectedList ?? []);
            updatedList = [...e.selectedItems];
            final updatedStationData = currentState.stationData?.copyWith(
              selectedList: updatedList,
            ) ?? AddStationViewModel(selectedList: updatedList);
            emit(currentState.copyWith(stationData:updatedStationData ));
          }
        },
        deleteSelectedConnector: (e) async {
          if (state is _LoadedState) {
            final currentState = state as _LoadedState;

            List<ConnectorTypeModel> updatedSelected = List.from(currentState.stationData?.selectedList ?? []);

            updatedSelected.remove(e.connector);

            final updatedStationData = currentState.stationData?.copyWith(
              selectedList: updatedSelected,
            ) ?? AddStationViewModel(selectedList: updatedSelected);

            emit(currentState.copyWith(stationData: updatedStationData));
          }
        },

        createStation: (_CreateStationEvent value) async {
          if (state is _LoadedState) {
            final currentState = state as _LoadedState;
            final latitude = currentState.stationData?.latitude;
            final longitude = currentState.stationData?.longitude;
            final name = nameController.text;
            final phone = phoneController.text;
            final hourlyRate = double.tryParse(hourlyRateController.text);
            final startTime = currentState.stationData?.startTime;
            final endTime = currentState.stationData?.endTime;
            final connectorTypeId = currentState.stationData?.selectedList
                .map((item) => item.id)
                .toList();
            final image = currentState.stationData?.images
                ?.map((item) => item.path.toString())
                .toList();
            final address = currentState.stationData?.address;
            final kwt = double.tryParse(kilowattController.text);
            // final userId = currentState.userId;

            final createStationData = AddStationModel(
              lat: latitude,
              lng: longitude,
              startTime: startTime,
              endTime: endTime,
              connectorTypeId: connectorTypeId,
              hourlyRate: hourlyRate,
              phoneNumber: phone,
              name: name,
              address: address,
              image: image,
              kwt: kwt,
              userId: 47,
            );
            try {
              final createStation = await getIt<StationRepository>()
                  .addOwnStation(createStationData);
              final addStationViewModel = AddStationViewModel(createStation: createStation);
              emit(currentState.copyWith(stationData: addStationViewModel));
            } catch (e) {
              debugPrint("${AddStationState.error(e.toString())} error");
              emit(AddStationState.error(e.toString()));
            }
          }
        },
      );
    });
  }
}
