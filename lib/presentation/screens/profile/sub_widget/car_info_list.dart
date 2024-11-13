import 'package:flutter/material.dart';
import 'package:watt_hub/domain/models/car_model/car_model.dart';
import 'package:watt_hub/presentation/screens/profile/sub_widget/profile_car_item.dart';

///
class CarsInfoList extends StatelessWidget {
  final List<CarModel> carsData;
  const CarsInfoList({super.key, required this.carsData});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: carsData.map((carData) => ProfileCarItem(carData: carData)).toList(),
    );
  }
}
