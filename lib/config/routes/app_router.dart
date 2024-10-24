import 'package:auto_route/auto_route.dart';
import 'package:flutter/widgets.dart';
import 'package:watt_hub/presentation/screens/add_car/add_car_screen.dart';
import 'package:watt_hub/presentation/screens/add_station/add_station_screen.dart';
import 'package:watt_hub/presentation/screens/choose_station_address/choose_station_address_screen.dart';
import 'package:watt_hub/presentation/screens/dashboard/dashboard_screen.dart';
import 'package:watt_hub/presentation/screens/detail/detail_screen.dart';
import 'package:watt_hub/presentation/screens/filter/filter_screen.dart';
import 'package:watt_hub/presentation/screens/home/home_screen.dart';
import 'package:watt_hub/presentation/screens/onboarding/onboarding_screen.dart';
import 'package:watt_hub/presentation/screens/profile/profile_screen.dart';
import 'package:watt_hub/presentation/screens/request_station/request_station_screen.dart';
import 'package:watt_hub/presentation/screens/request_user/request_user_screen.dart';
import 'package:watt_hub/presentation/screens/sign_up/sign_up_screen.dart';
import 'package:watt_hub/presentation/screens/splash/splash_screen.dart';
import 'package:watt_hub/presentation/screens/station_info/station_info_screen.dart';
import 'package:watt_hub/presentation/screens/tip/tip_screen.dart';
import 'package:watt_hub/presentation/screens/uikit_example/uikit_example.dart';
import 'package:watt_hub/presentation/screens/verification/verification_screen.dart';
import 'package:watt_hub/presentation/screens/app_loading/app_loading_screen.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: SplashRoute.page, /*initial: true*/),
        AutoRoute(page: UikitExampleRoute.page,initial: true),
        AutoRoute(page: OnboardingRoute.page),
        AutoRoute(page: DashboardRoute.page, children: [
          AutoRoute(page: HomeRoute.page),
          AutoRoute(page: RequestStationRoute.page),
          AutoRoute(page: ProfileRoute.page),
        ]),
        AutoRoute(page: SignUpRoute.page),
        AutoRoute(page: VerificationRoute.page),
        AutoRoute(page: TipRoute.page),
        AutoRoute(page: FilterRoute.page),
        AutoRoute(page: StationInfoRoute.page),
        AutoRoute(page: DetailRoute.page),
        AutoRoute(page: AddStationRoute.page),
        AutoRoute(page: ChooseStationAddressRoute.page),
        AutoRoute(page: RequestUserRoute.page),
        AutoRoute(page: AddCarRoute.page),
      ];
}
