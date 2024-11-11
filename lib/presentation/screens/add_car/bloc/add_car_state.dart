part of 'add_car_bloc.dart';

@freezed
class AddCarState with _$AddCarState {
  const factory AddCarState({
    @Default([]) List<CarTypeModel> carTypes,
    @Default([]) List<CarModel> carModels,
    @Default([]) List<ConnectorTypeModel> connectors,



    CarTypeModel? selectedCarType,
    CarModel? selectedCarModel,
    ConnectorTypeModel? selectedConnector,



  }) = _AddCarState;
}
