import 'dart:io';

import 'package:watt_hub/config/config.dart';
import 'package:watt_hub/data/fake_data/car_models_data/car_models_data.dart';
import 'package:watt_hub/data/fake_data/car_types_data/car_types_data.dart';
import 'package:watt_hub/data/fake_data/connectors_data/connectors_data.dart';
import 'package:watt_hub/domain/models/car/car_model.dart';
import 'package:watt_hub/domain/models/car_type/car_type_model.dart';
import 'package:watt_hub/domain/models/connector_type/connector_type_model.dart';

part 'add_car_bloc.freezed.dart';

part 'add_car_event.dart';

part 'add_car_state.dart';

@injectable
class AddCarBloc extends Bloc<AddCarEvent, AddCarState> {
  AddCarBloc()
      : super(
          const AddCarState(),
        ) {
    on<AddCarEvent>(
      (event, emit) async {
        await event.map(
          loadCarTypes: (e) async {
            final carTypes = await fetchCarTypes();
            emit(
              state.copyWith(carTypes: carTypes),
            );
          },
          loadCarModels: (e) async {
            final carModels = await fetchCarModels();
            emit(
              state.copyWith(carModels: carModels),
            );
          },
          loadConnectors: (e) async {
            final connectors = await fetchConnectors();
            emit(
              state.copyWith(connectors: connectors),
            );
          },
          selectCarType: (e) async {
            emit(
              state.copyWith(selectedCarType: e.carType),
            );
          },
          imagesSelected: (e) async {
            final currentState = state;
            if (currentState is _AddCarState) {
              emit(
                currentState.copyWith(
                  images: e.images,
                ),
              );
            }
          },
          selectCarModel: (e) async {
            emit(
              state.copyWith(selectedCarModel: e.carModel),
            );
          },
          selectConnector: (e) async {
            emit(
              state.copyWith(selectedConnector: e.connector),
            );
          },
          removeImages: (_removeImagesEvent value) {
            emit(
              state.copyWith(images: null),
            );
          },
        );
      },
    );
  }

  Future<List<CarTypeModel>> fetchCarTypes() async {
    return carTypesData
        .map(
          (data) => CarTypeModel.fromJson(data),
        )
        .toList();
  }

  Future<List<CarModel>> fetchCarModels() async {
    return carModelsData
        .map(
          (data) => CarModel.fromJson(data),
        )
        .toList();
  }

  Future<List<ConnectorTypeModel>> fetchConnectors() async {
    return connectorsData
        .map(
          (data) => ConnectorTypeModel.fromJson(data),
        )
        .toList();
  }
}
