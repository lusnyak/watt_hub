part of 'add_car_bloc.dart';

@freezed
class AddCarEvent with _$AddCarEvent {
  const factory AddCarEvent.loadCarTypes() = _LoadCarTypesEvent;
  const factory AddCarEvent.loadCarModels() = _LoadCarModelsEvent;
  const factory AddCarEvent.loadConnectors() = _LoadConnectorsEvent;


  const factory AddCarEvent.selectCarType(CarTypeModel carType) = _SelectCarTypeEvent;
  const factory AddCarEvent.selectCarModel(CarModel carModel) = _SelectCarModelEvent;
  const factory AddCarEvent.selectConnector(ConnectorTypeModel connector) = _SelectConnectorEvent;


}
