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
          border: Border.all(color: WattHubColors.primaryLightGreenColor)),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    context.localized.carInfo,
                    style: body16SemiBoldTextStyle,
                  ).paddingOnly(bottom: 10.sp),
                  Text(carData.carModel.title),
                  Text(carData.carType.title),
                  Text(carData.connectorType.title),
                ],
              ).expanded(),
              SizedBox(
                width: 50.w,
                height: 50.h,
                child: Image.network(
                  carData.images.first,
                ),
                // child: WattHubAssets.images.profileImage.image(),
              )
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const InkWell(
                child: Icon(Icons.mode_edit_outlined),
              ),
              20.widthBox,
              const InkWell(child: Icon(Icons.delete_outline_outlined)),
            ],
          )
        ],
      ),
    ).paddingOnly(bottom: 10);
  }
}
