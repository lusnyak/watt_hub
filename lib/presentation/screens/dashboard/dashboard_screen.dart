import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:watt_hub/config/routes/app_router.dart';
import 'package:watt_hub/utils/extensions/extensions.dart';

@RoutePage()
class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      routes: const [
        HomeRoute(),
        RequestsRoute(),
        ProfileRoute(),
      ],
      bottomNavigationBuilder: (_, tabsRouter) {
        return BottomNavigationBar(
          currentIndex: tabsRouter.activeIndex,
          onTap: tabsRouter.setActiveIndex,
          items: [
            BottomNavigationBarItem(
              label: context.localized.home,
              icon: const Icon(Icons.home),
            ),
            BottomNavigationBarItem(
              label: context.localized.requests,
              icon: const Icon(Icons.horizontal_split_rounded),
            ),
            BottomNavigationBarItem(
              label: context.localized.profile,
              icon: const Icon(Icons.person),
            ),
          ],
        );
      },
    );
  }
}
