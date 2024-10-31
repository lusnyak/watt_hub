import 'package:flutter/material.dart';
import 'package:watt_hub/domain/models/car_model/car_model.dart';
import 'package:watt_hub/presentation/screens/profile/sub_widget/profile_car_item.dart';
import 'package:watt_hub/utils/extensions/localization_extensions.dart';
import 'package:watt_hub_uikit/watt_hub_uikit.dart';

class CarsInfoList extends StatelessWidget {
  final List<CarModel> carsData;
  const CarsInfoList({super.key, required this.carsData});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: ListView(
        children: carsData
            .map((carData) => ProfileCarItem(carData: carData))
            .toList(),
      ),
    );
  }
}
