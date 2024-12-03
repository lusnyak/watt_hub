import 'dart:io';
import 'package:watt_hub/config/config.dart';
import 'package:watt_hub/data/fake_data/car_models_data/car_models_data.dart';
import 'package:watt_hub/data/fake_data/car_types_data/car_types_data.dart';
import 'package:watt_hub/data/fake_data/connectors_data/connectors_data.dart';
import 'package:watt_hub/data/repository/car_repository.dart';
import 'package:watt_hub/domain/body_requests_model/add_car/add_car_model.dart';
import 'package:watt_hub/domain/models/car/car_model.dart';
import 'package:watt_hub/domain/models/car_type/car_type_model.dart';
import 'package:watt_hub/domain/models/connector_type/connector_type_model.dart';
import 'package:watt_hub/presentation/screens/add_car/view_model/add_car_view_model.dart';

part 'add_car_bloc.freezed.dart';

part 'add_car_event.dart';

part 'add_car_state.dart';

@injectable
class AddCarBloc extends Bloc<AddCarEvent, AddCarState> {
  AddCarBloc()
      : super(
          const AddCarState.loaded(),
        ) {
    on<AddCarEvent>(
      (event, emit) async {
        await event.map(
          loadCarTypes: (e) async {
            final carTypes = await fetchCarTypes();
            final currentState = state;
            if (currentState is _AddCarState) {
              final addCarData = currentState.addCarData?.copyWith(carTypes: carTypes) ?? AddCarViewModel(carTypes: carTypes);
              emit(currentState.copyWith(addCarData: addCarData));
            }
          },
          loadCarModels: (e) async {
            final carModels = await fetchCarModels();
            final currentState = state;
            if (currentState is _AddCarState) {
              final carModelsData = currentState.addCarData?.copyWith(carModels:carModels)
                  ?? AddCarViewModel(carModels: carModels);
              emit(
                currentState.copyWith(addCarData: carModelsData),
              );
            }
          },
          loadConnectors: (e) async {
            final connectors = await fetchConnectors();
            final currentState = state;
            if (currentState is _AddCarState) {
              final connectorsData = currentState.addCarData?.copyWith(connectors:connectors)
                  ?? AddCarViewModel(connectors: connectors);
              emit(
                currentState.copyWith(addCarData: connectorsData),
              );
            }
          },
          selectCarType: (e) async {
            final currentState = state;
            if (currentState is _AddCarState) {
              final selectedCarType = currentState.addCarData?.copyWith(selectedCarType: e.carType)
                  ?? AddCarViewModel(selectedCarType: e.carType);
              emit(
                currentState.copyWith(addCarData:selectedCarType),
              );
            }
          },
          imagesSelected: (e) async {
            final currentState = state;
            if (currentState is _AddCarState) {
              final imagesData = currentState.addCarData?.copyWith(images:  e.images)
                  ?? AddCarViewModel(images: e.images);
              emit(
                currentState.copyWith(
                 addCarData: imagesData
                ),
              );
            }
          },
          selectCarModel: (e) async {
            final currentState = state;
            if (currentState is _AddCarState) {
              final selectedCarModelData = currentState.addCarData?.copyWith(selectedCarModel: e.carModel)
                  ?? AddCarViewModel(selectedCarModel:e.carModel);
              emit(
                currentState.copyWith(addCarData:selectedCarModelData),
              );
            }
          },
          selectConnector: (e) async {
            final currentState = state;
            if (currentState is _AddCarState) {
              final selectedConnectorData = currentState.addCarData?.copyWith(selectedConnector: e.connector)
                  ?? AddCarViewModel(selectedConnector:e.connector);
              emit(
                currentState.copyWith(addCarData:selectedConnectorData),
              );
            }
          },
          removeImages: (_removeImagesEvent value) {
            final currentState = state;
            if (currentState is _AddCarState) {
              final imagesData = currentState.addCarData?.copyWith(images: null)
                  ?? AddCarViewModel(images:null);
              emit(
                currentState.copyWith(addCarData: imagesData),
              );
            }
          },
          createCar: (_CreateCarEvent value) async {
            if (state is _AddCarState) {
              final currentState = state as _AddCarState;
              final connectorTypeId =  currentState.addCarData?.selectedConnector?.id;
              final carTypeId =  currentState.addCarData?.selectedCarType?.id;
              final image =  currentState.addCarData?.images.toString();
              final carModelId = currentState.addCarData?.selectedCarModel?.id;
              const name = "hello";
              // final userId = currentState.userId;

              final createCarData = AddCarModel(
                carTypeId: carTypeId,
                carModelId: carModelId,
                connectorTypeId: connectorTypeId,
                userId: 47,
                name: name,
                image: image,
              );

              try {
                final addCar = await getIt<CarRepository>().addCar(createCarData);
                final addCarResponse = currentState.addCarData?.copyWith(addCar: addCar)
                    ?? AddCarViewModel(addCar:addCar);
                emit(currentState.copyWith(addCarData: addCarResponse));
              } catch (e) {
                return e;
              }
            }
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

  Future<List<CarModelJson>> fetchCarModels() async {
    return carModelsData
        .map(
          (data) => CarModelJson.fromJson(data),
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
