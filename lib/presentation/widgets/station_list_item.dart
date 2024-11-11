import 'package:flutter/material.dart';
import 'package:watt_hub/domain/models/station/station_model.dart';
import 'package:watt_hub/utils/extensions/localization_extensions.dart';
import 'package:watt_hub_uikit/watt_hub_uikit.dart';

class StationListItem extends StatelessWidget {
  const StationListItem({super.key, required this.stationListItem, this.onTap});

  final StationModel stationListItem;
  final GestureTapCallback? onTap;

  @override
  Widget build(BuildContext context) {
    debugPrint('$stationListItem stationListItem');
    return InkWell(
      onTap: onTap,
      child: Card(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              stationListItem.name ?? '',
              style: body18SemiBoldTextStyle,
            ),
            8.h.heightBox,
            Row(
              children: [
                const Icon(
                  Icons.location_on,
                  color: WattHubColors.greyColor,
                ),
                4.w.widthBox,
                Text(
                  stationListItem.address ?? '',
                  style: const TextStyle(color: WattHubColors.greyColor),
                ).expanded(),
              ],
            ),
            8.h.heightBox,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const Icon(Icons.electric_car, color: Colors.green),
                    4.w.widthBox,
                    Text(
                      '${stationListItem.kwt} ${context.localized.kilowatt}',
                      style: const TextStyle(color: WattHubColors.greyColor),
                    ),
                  ],
                ),
                Row(
                  children: [
                    const Icon(Icons.attach_money,
                        color: WattHubColors.greyColor),
                    4.w.widthBox,
                    Text(
                      '\$${stationListItem.hourlyRate}/${context.localized.hourlyRate}',
                      style: const TextStyle(color: WattHubColors.greyColor),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ).paddingAll(16.r),
      ).paddingSymmetric(horizontal: 16.w, vertical: 8.h),
    );
  }
}
