import 'package:flutter/material.dart';
import 'package:watt_hub/utils/extensions/localization_extensions.dart';
import 'package:watt_hub_uikit/watt_hub_uikit.dart';

class CarInfo extends StatelessWidget {
  const CarInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(14),
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
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ).paddingOnly(bottom: 10),
                  const Text('Car name'),
                  const Text('Car model'),
                  const Text('Some text'),
                ],
              ).expanded(),
              SizedBox(
                width: 50,
                height: 50,
                child: WattHubAssets.images.profileImage.image(),
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
    );
  }
}
