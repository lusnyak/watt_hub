import 'package:flutter/material.dart';
import 'package:watt_hub/domain/models/car_model/car_model.dart';
import 'package:watt_hub/domain/models/station/station_model.dart';
import 'package:watt_hub/presentation/screens/profile/widgets/profile_car_item.dart';
import 'package:watt_hub/presentation/widgets/station_list_item.dart';
import 'package:watt_hub_uikit/watt_hub_uikit.dart';

/// TODO: Refactoring - Marieta - done
class StationsList<T> extends StatelessWidget {
  final List<T> dataList;
  final Function(dynamic)? onTap;
  final bool isSlidable;
  // final Widget? slidableItem;
  final IconData? behindActionIcon;
  final SlidableActionCallback? behindAction;
  final Color? behindActionBgColor;
  final IconData? endActionIcon;
  final SlidableActionCallback? endAction;
  final Color? endActionBgColor;
  final bool? isCar;

  const StationsList({
    super.key,
    required this.dataList,
    this.onTap,
    this.behindActionIcon,
    this.endActionIcon,
    this.behindAction,
    this.behindActionBgColor,
    this.endAction,
    this.endActionBgColor,
    this.isCar,
  }) : isSlidable = false;

  const StationsList.slidable({
    super.key,
    required this.dataList,
    this.onTap,
    this.behindActionIcon,
    this.endActionIcon,
    this.behindAction,
    this.behindActionBgColor,
    this.endAction,
    this.endActionBgColor,
    this.isCar,
  }) : isSlidable = true;

  @override
  Widget build(BuildContext context) {
    if (isSlidable) {
      return Column(
        children: dataList.map((dataItem) {
          return WHSlidable(
            behindActionIcon: Icons.edit,
            endActionIcon: Icons.delete,

            // behindActionIcon: behindActionIcon,
            // endActionIcon: endActionIcon,
            behindActionBgColor: behindActionBgColor,
            endActionBgColor: endActionBgColor,
            behindAction: behindAction,
            endAction: endAction,
            slidableItem: isCar != null && isCar == true
                ? ProfileCarItem(carData: dataItem as CarModel)
                : StationListItem(
                    stationListItem: dataItem as StationModel,
                    isBorder: false,
                  ),
          ).paddingSymmetric(vertical: 8.h);
        }).toList(),
      );
    } else {
      return ListView.builder(
        itemCount: dataList.length,
        itemBuilder: (context, index) {
          final dataItem = dataList[index];

          return StationListItem(
            stationListItem: dataItem as StationModel,
            isBorder: true,
            onTap: () => onTap?.call(dataItem),
          ).paddingSymmetric(
            horizontal: 20.w,
            vertical: 8,
          );
        },
      );
    }
  }
}
