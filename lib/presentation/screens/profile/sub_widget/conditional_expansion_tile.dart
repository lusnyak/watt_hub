import 'package:flutter/material.dart';
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
            collapsedShape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
            tilePadding: const EdgeInsets.symmetric(horizontal: 10),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
            title: Text(title),
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
        : ListTile(
            splashColor: WattHubColors.primaryLightGreenColor,
            contentPadding: const EdgeInsets.symmetric(horizontal: 10),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
            title: Text(title),
            trailing: Icon(
              iconTrailing,
              size: 30,
            ),
            leading: Icon(
              iconLeading,
              size: 40,
            ),
            onTap: onTap ?? () {}, // If no onTap provided, do nothing
          );
  }
}
