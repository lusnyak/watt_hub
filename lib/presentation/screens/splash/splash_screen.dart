import 'package:auto_route/auto_route.dart';
import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:watt_hub/config/locator/service_locator.dart';
import 'package:watt_hub/presentation/screens/splash/my_service.dart';
import 'package:watt_hub_localization/generated/l10n.dart';

@RoutePage()
class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final myService = getIt<MyService>();

    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'Splash screen!',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 40.0),
            ),
            const SizedBox(
              height: 40.0,
            ),
            ElevatedButton(
              onPressed: () => {
                myService.doSomething(),
                AutoRouter.of(context).back(),
              },
              child: Text(S.of(context).description),
            )
          ],
        ).paddingAll(20.0),
      ),
    );
  }
}
