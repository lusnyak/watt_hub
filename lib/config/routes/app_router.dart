import 'package:auto_route/auto_route.dart';
import 'package:watt_hub/presentation/screens/splash/splash_view.dart';
import 'package:watt_hub/presentation/screens/users_list/users_list_screen.dart';
import 'package:watt_hub/watt_hub_app.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: SplashRoute.page),
        AutoRoute(page: WattHubAppRoute.page, initial: true),
        AutoRoute(page: UsersListRoute.page),
      ];
}
