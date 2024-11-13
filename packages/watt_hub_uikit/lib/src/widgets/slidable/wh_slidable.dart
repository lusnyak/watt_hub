import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:watt_hub_uikit/src/theme/theme.dart';

class WHSlidable extends StatelessWidget {
  final Widget slidableItem;
  final IconData? behindActionIcon;
  final SlidableActionCallback? behindAction;
  final Color? behindActionBgColor;
  final IconData? endActionIcon;
  final SlidableActionCallback? endAction;
  final Color? endActionBgColor;
  const WHSlidable({
    super.key,
    required this.slidableItem,
    this.behindActionIcon,
    this.behindAction,
    this.behindActionBgColor,
    this.endActionIcon,
    this.endAction,
    this.endActionBgColor,
  });

  @override
  Widget build(BuildContext context) {
    return Slidable(
      startActionPane: ActionPane(
        extentRatio: 0.3,
        motion: const ScrollMotion(),
        children: [
          SlidableAction(
            onPressed: behindAction,
            backgroundColor:
                behindActionBgColor ?? WattHubColors.primaryGreenColor,
            icon: behindActionIcon,
            foregroundColor: Colors.white,
            borderRadius: leftRoundedBorder,
          ),
        ],
      ),
      endActionPane: ActionPane(
        extentRatio: 0.3,
        motion: const ScrollMotion(),
        children: [
          SlidableAction(
            onPressed: endAction,
            backgroundColor: endActionBgColor ?? WattHubColors.redColor,
            icon: endActionIcon,
            foregroundColor: Colors.white,
            borderRadius: rightRoundedBorder,
          ),
        ],
      ),
      child: slidableItem.paddingOnly(left: 5, right: 5),
    );
  }
}
