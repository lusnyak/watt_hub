import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:watt_hub/domain/models/car_model/car_model.dart';
import 'package:watt_hub/utils/utils.dart';
import 'package:watt_hub_uikit/watt_hub_uikit.dart';

class ProfileCarItem extends StatelessWidget {
  final CarModel carData;
  const ProfileCarItem({super.key, required this.carData});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: paddingV20H10,
      decoration: BoxDecoration(
        borderRadius: roundedBorder14,
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    context.localized.carInfo,
                    style: body18SemiBoldTextStyle,
                  ).paddingOnly(bottom: 10.h),
                  Text(carData.type?.title ?? ""),
                  Text("${carData.model?.title}"),
                  Text(carData.connectorTypes?.title ?? ""),
                ],
              ).expanded(),
              SizedBox(
                width: 50.w,
                height: 50.h,
                // child: Image.network(
                //   carData.images.first,
                // ),
                child: const Icon(CupertinoIcons.car_detailed),
              )
            ],
          ),
        ],
      ),
    ).paddingOnly(bottom: 10);
  }
}
