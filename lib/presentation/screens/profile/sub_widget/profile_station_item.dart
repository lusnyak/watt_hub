import 'package:flutter/material.dart';
import 'package:watt_hub/domain/models/station/station_model.dart';
import 'package:watt_hub/utils/extensions/localization_extensions.dart';
import 'package:watt_hub_uikit/watt_hub_uikit.dart';

class ProfileStationItem extends StatelessWidget {
  final StationModel stationData;
  const ProfileStationItem({super.key, required this.stationData});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: paddingV20H10,
      decoration: BoxDecoration(
          borderRadius: roundedBorder14,
          border: Border.all(color: WattHubColors.primaryLightGreenColor)),
      child: WHSlidable(
          behindActionIcon: Icons.edit,
          endActionIcon: Icons.delete,
          slidableItem: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                context.localized.stationInfo,
                style: body16SemiBoldTextStyle,
              ).paddingOnly(bottom: 10.sp),
              Text('${context.localized.name}: ${stationData.name}'),
              Text('${context.localized.street}: ${stationData.address}'),
              Text('${context.localized.max}: ${stationData.kwt}kWt'),
              Text(
                  '${context.localized.hourlyRateFull}: ${stationData.hourlyRate}\$'),
            ],
          )),
    ).paddingOnly(bottom: 10.sp);
  }
}
