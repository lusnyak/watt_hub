import 'package:flutter/material.dart';
import 'package:latlong2/latlong.dart';

import 'package:watt_hub/domain/models/station/station_model.dart';
import 'package:watt_hub/presentation/widgets/station_list_item.dart';
import 'package:watt_hub_uikit/watt_hub_uikit.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

// context.read<HomeBloc>().add(
// HomeEvent.centerOnStation(stationItem, currentLocation),
// )

/// TODO: Refactoring - Marieta
class StationsList extends StatelessWidget {
  final List<StationModel> stationsList;
  final LatLng? currentLocation;
  final VoidCallback? onTap;
  final bool isSlidable;
  // final Widget? slidableItem;
  final IconData? behindActionIcon;
  final SlidableActionCallback? behindAction;
  final Color? behindActionBgColor;
  final IconData? endActionIcon;
  final SlidableActionCallback? endAction;
  final Color? endActionBgColor;

  const StationsList({
    super.key,
    required this.stationsList,
    this.currentLocation,
    this.onTap,
    this.behindActionIcon,
    this.endActionIcon,
    this.behindAction,
    this.behindActionBgColor,
    this.endAction,
    this.endActionBgColor,
  }) : isSlidable = false;
  const StationsList.slidable({
    super.key,
    required this.stationsList,
    this.currentLocation,
    this.onTap,
    this.behindActionIcon,
    this.endActionIcon,
    this.behindAction,
    this.behindActionBgColor,
    this.endAction,
    this.endActionBgColor,
  }) : isSlidable = true;

  @override
  Widget build(BuildContext context) {
    if (isSlidable) {
      return Column(
        children: stationsList.map((stationData) {
          return WHSlidable(
            behindActionIcon: behindActionIcon,
            endActionIcon: endActionIcon,
            behindActionBgColor: behindActionBgColor,
            endActionBgColor: endActionBgColor,
            behindAction: behindAction,
            endAction: endAction,
            slidableItem: StationListItem(
              stationListItem: stationData,
            ),
          ).paddingSymmetric(vertical: 8.h);
        }).toList(),
      );
    } else {
      return ListView.builder(
        itemCount: stationsList.length,
        itemBuilder: (context, index) {
          final stationItem = stationsList[index];

          return StationListItem(stationListItem: stationItem, onTap: onTap)
              .paddingSymmetric(horizontal: 20.w, vertical: 8);
        },
      );
    }
  }
}
