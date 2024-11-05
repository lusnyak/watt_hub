import 'package:flutter/material.dart';
import 'package:watt_hub_uikit/watt_hub_uikit.dart';

class RequestItemInfo extends StatelessWidget {
  const RequestItemInfo({
    super.key,
    this.title,
    this.subTitle,
    this.connectorIcon,
  });

  final String? title;
  final String? subTitle;
  final Icon? connectorIcon;

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(minHeight: 40.h),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: 60.w,
            child: Text(
              title ?? '',
              textAlign: TextAlign.center,
              style: body10RegularTextStyle.copyWith(color: Colors.grey),
              overflow: TextOverflow.clip,
            ),
          ),
          connectorIcon ??
              Text(
                subTitle ?? '',
                style: body12RegularTextStyle,
              ),
        ],
      ).expanded(),
    );
  }
}
