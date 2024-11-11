import 'package:flutter/cupertino.dart';
import 'package:watt_hub/domain/enums/order_status/order_status_enum.dart';
import 'package:watt_hub/utils/extensions/extensions.dart';
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
        ..._getActionButtons(context),
        if (status == OrderStatus.Cancelled ||
            status == OrderStatus.Completed ||
            status == OrderStatus.Pending)
          _getStatusText(context).paddingOnly(top: 8.h).expanded(),
      ],
    );
  }

  List<Widget> _getActionButtons(BuildContext context) {
    if (status == OrderStatus.NotConfirmed) {
      if (isStationRequests == true) {
        return [
          WHElevatedButton.secondary(
            title: context.localized.accept,
            padding: EdgeInsets.zero,
            onPressed: () {},
          ).expanded(),
          10.w.widthBox,
          WHElevatedButton.primary(
            title: context.localized.decline,
            padding: EdgeInsets.zero,
            onPressed: () {},
          ).expanded(),
        ];
      } else if (isStationRequests == false) {
        return [
          WHElevatedButton.secondary(
            title: context.localized.cancel,
            padding: EdgeInsets.zero,
            onPressed: () {},
          ).expanded(),
          10.w.widthBox,
          WHElevatedButton.primary(
            title: context.localized.start,
            padding: EdgeInsets.zero,
            onPressed: () {},
          ).expanded(),
        ];
      }
    } else if (status == OrderStatus.Confirmed) {
      return [
        WHElevatedButton.secondary(
          title: context.localized.cancel,
          padding: EdgeInsets.zero,
          onPressed: () {},
        ).expanded(),
      ];
    }
    return [];
  }

  Widget _getStatusText(BuildContext context) {
    Color textColor;
    String text;

    switch (status) {
      case OrderStatus.Cancelled:
        text = context.localized.canceled;
        textColor = WattHubColors.redColor;
        break;
      case OrderStatus.Completed:
        text = context.localized.finished;
        textColor = WattHubColors.primaryGreenColor;
        break;
      case OrderStatus.Pending:
        text = '${context.localized.pending}...';
        textColor = WattHubColors.orangeColor;
        break;
      default:
        text = '';
        textColor = WattHubColors.blackColor;
    }

    return Text(
      text,
      textAlign: TextAlign.center,
      style: body12RegularTextStyle.copyWith(color: textColor),
    );
  }
}
