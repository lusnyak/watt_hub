import 'dart:async';

import 'package:watt_hub/config/config.dart';
import 'package:watt_hub/data/remote/car_remote/car_remote.dart';
import 'package:watt_hub/domain/models/car_model/car_model.dart';
import 'package:watt_hub/domain/models/car_type/car_type_model.dart';
import 'package:watt_hub/domain/models/my_car_model/my_car_model.dart';

@lazySingleton
class CarRepository {
  Future<List<CarTypeModel>?> getCarTypes() async {
    return await getIt<CarRemoteApi>().carTypes();
  }

  Future<List<CarTypeModel>?> getCarModels() async {
    return await getIt<CarRemoteApi>().carModels();
  }

  Future<List<CarModel>?> getCars() async {
    return await getIt<CarRemoteApi>().getCars();
  }

  Future<MyCarModel?> getMyCar() async {
    return await getIt<CarRemoteApi>().getMyCar();
  }

  Future<MyCarModel?> getUserCars(String id) async {
    return await getIt<CarRemoteApi>().getUserCars(id);
  }

  Future<CarModel?> addCar(CarModel addCarData) async {
    return await getIt<CarRemoteApi>().addCar(addCarData);
  }
}
