import 'package:flutter/material.dart';
import 'package:watt_hub/utils/extensions/localization_extensions.dart';
import 'package:watt_hub_uikit/watt_hub_uikit.dart';

class StationInfo extends StatelessWidget {
  const StationInfo({super.key});

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
          const Text('Street: Aram Khachatryan street'),
          const Text('Max: 3.7kWt'),
          const Text('Hourly rate: 10\$'),
          const Text('Available hours: 16:00 - 18:00'),
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
