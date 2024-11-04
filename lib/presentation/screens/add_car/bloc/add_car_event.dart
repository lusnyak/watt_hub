part of 'add_car_bloc.dart';

@freezed
class AddCarEvent with _$AddCarEvent {
  const factory AddCarEvent.loadCarTypes() = _LoadCarTypesEvent;
  const factory AddCarEvent.loadCarModels() = _LoadCarModelsEvent;
  const factory AddCarEvent.loadConnectors() = _LoadConnectorsEvent;
}
