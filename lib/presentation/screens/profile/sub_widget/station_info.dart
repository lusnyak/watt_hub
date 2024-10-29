import 'package:flutter/material.dart';
import 'package:watt_hub/utils/extensions/localization_extensions.dart';
import 'package:watt_hub_uikit/watt_hub_uikit.dart';

class StationInfo extends StatelessWidget {
  final Map<String, dynamic> stationData;
  const StationInfo({super.key, required this.stationData});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: paddingV20H10,
      decoration: BoxDecoration(
          borderRadius: roundedBorder14,
          border: Border.all(color: WattHubColors.primaryLightGreenColor)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            context.localized.stationInfo,
            style: body16SemiBoldTextStyle,
          ).paddingOnly(bottom: 10.sp),
          Text('${context.localized.name}: ${stationData['name']}'),
          Text('${context.localized.street}: ${stationData['address']}'),
          Text('${context.localized.max}: ${stationData['kwt']}kWt'),
          Text(
              '${context.localized.hourlyRateFull}: ${stationData['hourlyRate']}\$'),
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
