import 'package:flutter/material.dart';
import 'package:watt_hub/domain/models/station/station_model.dart';
import 'package:watt_hub/utils/extensions/localization_extensions.dart';
import 'package:watt_hub_uikit/watt_hub_uikit.dart';

/// TODO: Refactoring - Marieta - done
class StationListItem extends StatelessWidget {
  const StationListItem({
    super.key,
    required this.stationListItem,
    this.onTap,
    this.isBorder = false,
  });

  final StationModel stationListItem;
  final GestureTapCallback? onTap;
  final bool isBorder;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: paddingV20H10,
        decoration: BoxDecoration(
            borderRadius: roundedBorder14,
            border: Border.all(
              color: isBorder
                  ? WattHubColors.primaryLightGreenColor
                  : WattHubColors.transparentColor,
            )),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              stationListItem.name ?? '',
              style: body18SemiBoldTextStyle,
            ),
            SizedBox(height: 8.h),
            _buildLocationRow(),
            SizedBox(height: 8.h),
            _buildDetailsRow(context),
          ],
        ),
      ),
    );
  }

  Widget _buildLocationRow() {
    return Row(
      children: [
        const Icon(
          Icons.location_on,
          color: WattHubColors.greyColor,
        ),
        SizedBox(width: 4.w),
        Text(
          stationListItem.address ?? '',
          style: const TextStyle(color: WattHubColors.greyColor),
        ).expanded(),
      ],
    );
  }

  Widget _buildDetailsRow(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _buildKilowattInfo(context),
        _buildHourlyRateInfo(context),
      ],
    );
  }

  Widget _buildKilowattInfo(BuildContext context) {
    return Row(
      children: [
        const Icon(Icons.electric_car, color: Colors.green),
        SizedBox(width: 4.w),
        Text(
          '${stationListItem.kwt} ${context.localized.kilowatt}',
          style: const TextStyle(color: WattHubColors.greyColor),
        ),
      ],
    );
  }

  Widget _buildHourlyRateInfo(BuildContext context) {
    return Row(
      children: [
        // const Icon(Icons.attach_money, color: WattHubColors.greyColor),
        Text(
          '\$${stationListItem.hourlyRate}/${context.localized.hourlyRate}',
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(color: WattHubColors.greyColor),
        ),
      ],
    );
  }

  Widget _buildLocationRow() {
    return Row(
      children: [
        const Icon(
          Icons.location_on,
          color: WattHubColors.greyColor,
        ),
        SizedBox(width: 4.w),
        Text(
          stationListItem.address ?? '',
          style: const TextStyle(color: WattHubColors.greyColor),
        ).expanded(),
      ],
    );
  }

  Widget _buildDetailsRow(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _buildKilowattInfo(context),
        _buildHourlyRateInfo(context),
      ],
    );
  }

  Widget _buildKilowattInfo(BuildContext context) {
    return Row(
      children: [
        const Icon(Icons.electric_car, color: Colors.green),
        SizedBox(width: 4.w),
        Text(
          '${stationListItem.kwt} ${context.localized.kilowatt}',
          style: const TextStyle(color: WattHubColors.greyColor),
        ),
      ],
    );
  }

  Widget _buildHourlyRateInfo(BuildContext context) {
    return Row(
      children: [
        const Icon(Icons.attach_money, color: WattHubColors.greyColor),
        SizedBox(width: 4.w),
        Text(
          '\$${stationListItem.hourlyRate}/${context.localized.hourlyRate}',
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(color: WattHubColors.greyColor),
        ).flexible(),
      ],
    ).expanded();
  }
}
