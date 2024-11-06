import 'package:flutter/cupertino.dart';
import 'package:watt_hub/domain/enums/order_status/order_status_enum.dart';
import 'package:watt_hub_uikit/watt_hub_uikit.dart';

class RequestsFooter extends StatelessWidget {
  const RequestsFooter({
    super.key,
    this.status,
    this.isStationRequests,
  });

  final OrderStatus? status;
  final bool? isStationRequests;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (isStationRequests != null && isStationRequests!)
          if (status == OrderStatus.NotConfirmed)
            WHElevatedButton.secondary(
              title: 'Accept',
              padding: EdgeInsets.zero,
              onPressed: () {},
            ).expanded(),
        if (isStationRequests != null && isStationRequests!) 10.w.widthBox,
        if (isStationRequests != null && isStationRequests!)
          if (status == OrderStatus.NotConfirmed)
            WHElevatedButton.primary(
              title: 'Decline',
              padding: EdgeInsets.zero,
              onPressed: () {},
            ).expanded(),
        if (isStationRequests != null && !isStationRequests!)
          if (status == OrderStatus.NotConfirmed)
            WHElevatedButton.secondary(
              title: 'Cancel',
              padding: EdgeInsets.zero,
              onPressed: () {},
            ).expanded(),
        if (isStationRequests != null && !isStationRequests!) 10.w.widthBox,
        if (isStationRequests != null && !isStationRequests!)
          if (status == OrderStatus.NotConfirmed)
            WHElevatedButton.primary(
              title: 'Start',
              padding: EdgeInsets.zero,
              onPressed: () {},
            ).expanded(),
        if (status == OrderStatus.Confirmed)
          WHElevatedButton.secondary(
            title: 'Cancel',
            padding: EdgeInsets.zero,
            onPressed: () {},
          ).expanded(),
        if (status == OrderStatus.Cancelled)
          Text(
            'Canceled',
            textAlign: TextAlign.center,
            style:
                body12RegularTextStyle.copyWith(color: WattHubColors.redColor),
          ).paddingOnly(top: 8.h).expanded(),
        if (status == OrderStatus.Completed)
          Text(
            'Finished',
            textAlign: TextAlign.center,
            style: body12RegularTextStyle.copyWith(
                color: WattHubColors.primaryGreenColor),
          ).paddingOnly(top: 8.h).expanded(),
        if (status == OrderStatus.Pending)
          Text(
            'Pending...',
            textAlign: TextAlign.center,
            style: body12RegularTextStyle.copyWith(
                color: WattHubColors.orangeColor),
          ).paddingOnly(top: 8.h).expanded(),
      ],
    );
  }
}
