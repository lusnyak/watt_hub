import 'package:flutter/material.dart';
import 'package:watt_hub/config/locator/service_locator.dart';
import 'package:watt_hub/config/routes/app_router.dart';
import 'package:watt_hub_localization/generated/l10n.dart';
import 'package:watt_hub_localization/watt_hub_localization.dart';

void main() {
  configureDependencies();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      localizationsDelegates: const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      debugShowCheckedModeBanner: false,
      locale: S.delegate.supportedLocales.first,
      routerConfig: _appRouter.config(),
    );
  }
}
