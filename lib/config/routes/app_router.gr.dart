// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

/// generated route for
/// [SplashScreen]
class SplashRoute extends PageRouteInfo<void> {
  const SplashRoute({List<PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const SplashScreen();
    },
  );
}

/// generated route for
/// [WattHubAppScreen]
class WattHubAppRoute extends PageRouteInfo<void> {
  const WattHubAppRoute({List<PageRouteInfo>? children})
      : super(
          WattHubAppRoute.name,
          initialChildren: children,
        );

  static const String name = 'WattHubAppRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const WattHubAppScreen();
    },
  );
}
