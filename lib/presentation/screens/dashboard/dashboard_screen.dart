import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:watt_hub/config/routes/app_router.dart';
import 'package:watt_hub_localization/watt_hub_localization.dart';
import 'package:watt_hub_uikit/watt_hub_uikit.dart';

@RoutePage()
class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      routes: [
        HomeRoute(),
        const RequestStationRoute(),
        const ProfileRoute(),
      ],
      bottomNavigationBuilder: (_, tabsRouter) {
        return BottomNavigationBar(
          currentIndex: tabsRouter.activeIndex,
          onTap: tabsRouter.setActiveIndex,
          unselectedLabelStyle: body14RegularTextStyle,
          selectedLabelStyle: body14RegularTextStyle,
          items: [
            BottomNavigationBarItem(
              label: AppLocalizations.of(context).home,
              icon: const Icon(Icons.home),
            ),
            BottomNavigationBarItem(
              label: AppLocalizations.of(context).requests,
              icon: const Icon(Icons.horizontal_split_rounded),
            ),
            BottomNavigationBarItem(
              label: AppLocalizations.of(context).profile,
              icon: const Icon(Icons.person),
            ),
          ],
        );
      },
    );
  }
}
