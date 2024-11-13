import 'package:flutter/material.dart';
import 'package:watt_hub/presentation/screens/profile/sub_widget/profile_menu_item.dart';
import 'package:watt_hub_uikit/watt_hub_uikit.dart';

class ConditionalExpansionTile extends StatelessWidget {
  final String title;
  final List<Widget> children;
  final VoidCallback? onTap;
  final IconData iconLeading;

  const ConditionalExpansionTile({
    super.key,
    required this.title,
    required this.children,
    this.onTap,
    required this.iconLeading,
  });

  @override
  Widget build(BuildContext context) {
    // Check if there are children
    bool hasChildren = children.isNotEmpty;
    IconData? iconTrailing =
        hasChildren ? Icons.keyboard_arrow_down_rounded : Icons.add;

    return hasChildren
        ? ExpansionTile(
            collapsedShape: roundedBorderShape14,
            tilePadding: paddingH10,
            shape: roundedBorderShape14,
            title: Text(
              title,
              style: body16RegularTextStyle,
            ),
            leading: Icon(
              iconLeading,
              size: 40,
            ),
            trailing: Icon(
              iconTrailing,
              size: 30,
            ),
            children: children,
          )
        : ProfileMenuItem(
            title: title,
            iconLeading: iconLeading,
            onTap: onTap,
            iconTrailing: iconTrailing,
          );
  }
}
