import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../config/config.dart';
import '../../../../data/fake_data/car_models_data/car_models_data.dart';
import '../../../../data/fake_data/car_types_data/car_types_data.dart';
import '../../../../data/fake_data/connectors_data/connectors_data.dart';
import '../../../../domain/models/car/car_model.dart';
import '../../../../domain/models/car_type/car_type_model.dart';
import '../../../../domain/models/connector_type/connector_type_model.dart';

part 'add_car_bloc.freezed.dart';
part 'add_car_event.dart';
part 'add_car_state.dart';

@injectable
class AddCarBloc extends Bloc<AddCarEvent, AddCarState> {
  AddCarBloc() : super(const AddCarState()) {
    on<_LoadCarTypesEvent>(
      (event, emit) {
        final carTypes = carTypesData
            .map(
              (carTypeJson) => CarTypeModel.fromJson(carTypeJson),
            )
            .toList();
        emit(
          state.copyWith(carTypes: carTypes),
        );
      },
    );

    on<_LoadCarModelsEvent>(
      (event, emit) {
        final carModels = carModelsData
            .map(
              (carModelJson) => CarModel.fromJson(carModelJson),
            )
            .toList();
        emit(
          state.copyWith(carModels: carModels),
        );
      },
    );

    on<_LoadConnectorsEvent>(
      (event, emit) {
        final connectors = connectorsData
            .map(
              (connectorJson) => ConnectorTypeModel.fromJson(connectorJson),
            )
            .toList();
        emit(
          state.copyWith(connectors: connectors),
        );
      },
    );
  }
}
