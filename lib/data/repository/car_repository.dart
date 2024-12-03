import 'dart:async';

import 'package:flutter/material.dart';
import 'package:watt_hub/config/config.dart';
import 'package:watt_hub/data/remote/car_remote/car_remote.dart';
import 'package:watt_hub/domain/body_requests_model/add_car/add_car_model.dart';
import 'package:watt_hub/domain/models/car_add_response/car_add_response_model.dart';
import 'package:watt_hub/domain/models/car_model/car_model.dart';
import 'package:watt_hub/domain/models/car_type/car_type_model.dart';

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

  Future<CarModel?> getMyCar() async {
    return await getIt<CarRemoteApi>().getMyCar().catchError((e) {
      debugPrint('$e car error');
      return e;
    });
  }

  Future<CarModel?> getUserCars(String id) async {
    return await getIt<CarRemoteApi>().getUserCars(id);
  }

  Future<CarAddResponseModel?> addCar(AddCarModel addCarData) async {
    return await getIt<CarRemoteApi>().addCar(addCarData);
  }

}
