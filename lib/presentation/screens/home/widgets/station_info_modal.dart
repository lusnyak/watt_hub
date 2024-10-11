import 'package:flutter/material.dart';
import 'package:watt_hub/config/routes/app_router.dart';
import 'package:watt_hub/domain/models/charging_station/charging_station_model.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:auto_route/auto_route.dart';
import 'package:watt_hub_uikit/watt_hub_uikit.dart';

void showStationInfo(BuildContext context, ChargingStationModel station) {
  showModalBottomSheet(
    context: context,
    builder: (BuildContext context) {
      return Container(
        height: 220,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  station.name,
                  style: body16SemiBoldTextStyle,
                ),
                Text(
                  station.address,
                  style: body14RegularTextStyle,
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  '${station.averageRate}',
                  style: body14RegularTextStyle,
                ),
                10.widthBox,
                RatingBarIndicator(
                  rating: station.averageRate,
                  itemBuilder: (context, index) => const Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                  itemCount: 5,
                  itemSize: 25.0,
                  direction: Axis.horizontal,
                ),
                10.widthBox,
                Text(
                  '(${station.reviews.length} reviews)',
                  style: body14RegularTextStyle.copyWith(color: Colors.grey),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                WHOutlinedButton(
                  title: 'View',
                  onPressed: () =>
                      AutoRouter.of(context).push(const StationInfoRoute()),
                ).expanded(),
                10.widthBox,
                WHElevatedButton.primary(
                  title: 'Book',
                  onPressed: () =>
                      AutoRouter.of(context).push(const DetailRoute()),
                ).expanded(),
              ],
            ),
          ],
        ),
      ).paddingAll(20.0);
    },
  );
}
