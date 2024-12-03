import 'dart:io';
import 'package:watt_hub/domain/models/car/car_model.dart';
import 'package:watt_hub/domain/models/car_type/car_type_model.dart';
import 'package:watt_hub/domain/models/connector_type/connector_type_model.dart';
import 'package:watt_hub/domain/models/car_add_response/car_add_response_model.dart';

// class AddCarViewModel {
//   final List<CarTypeModel> carTypes;
//   final List<CarModelJson> carModels;
//   final List<ConnectorTypeModel> connectors;
//   final File? images;
//   final CarTypeModel? selectedCarType;
//   final CarModelJson? selectedCarModel;
//   final ConnectorTypeModel? selectedConnector;
//   final CarAddResponseModel? addCar;
//
//   AddCarViewModel({
//      this.carTypes = const <CarTypeModel>[],
//      this.carModels = const <CarModelJson>[],
//      this.connectors = const <ConnectorTypeModel>[],
//     this.images,
//     this.selectedCarType,
//     this.selectedCarModel,
//     this.selectedConnector,
//     this.addCar,
//   });
//
//   factory AddCarViewModel.fromState(
//       List<CarTypeModel> carTypes,
//       List<CarModelJson> carModels,
//       List<ConnectorTypeModel> connectors,
//       File? images,
//       CarTypeModel? selectedCarType,
//       CarModelJson? selectedCarModel,
//       ConnectorTypeModel? selectedConnector,
//       CarAddResponseModel? addCar,
//       ) {
//     return AddCarViewModel(
//       carTypes: carTypes,
//       carModels: carModels,
//       connectors: connectors,
//       images: images,
//       selectedCarType: selectedCarType,
//       selectedCarModel: selectedCarModel,
//       selectedConnector: selectedConnector,
//       addCar: addCar,
//     );
//   }
// }
class AddCarViewModel {
  final List<CarTypeModel> carTypes;
  final List<CarModelJson> carModels;
  final List<ConnectorTypeModel> connectors;
  final File? images;
  final CarTypeModel? selectedCarType;
  final CarModelJson? selectedCarModel;
  final ConnectorTypeModel? selectedConnector;
  final CarAddResponseModel? addCar;

  AddCarViewModel({
    this.carTypes = const <CarTypeModel>[],
    this.carModels = const <CarModelJson>[],
    this.connectors = const <ConnectorTypeModel>[],
    this.images,
    this.selectedCarType,
    this.selectedCarModel,
    this.selectedConnector,
    this.addCar,
  });

  AddCarViewModel copyWith({
    List<CarTypeModel>? carTypes,
    List<CarModelJson>? carModels,
    List<ConnectorTypeModel>? connectors,
    File? images,
    CarTypeModel? selectedCarType,
    CarModelJson? selectedCarModel,
    ConnectorTypeModel? selectedConnector,
    CarAddResponseModel? addCar,
  }) {
    return AddCarViewModel(
      carTypes: carTypes ?? this.carTypes,
      carModels: carModels ?? this.carModels,
      connectors: connectors ?? this.connectors,
      images: images ?? this.images,
      selectedCarType: selectedCarType ?? this.selectedCarType,
      selectedCarModel: selectedCarModel ?? this.selectedCarModel,
      selectedConnector: selectedConnector ?? this.selectedConnector,
      addCar: addCar ?? this.addCar,
    );
  }
}
