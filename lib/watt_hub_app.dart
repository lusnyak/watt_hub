import 'package:auto_route/auto_route.dart';
import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:watt_hub/config/routes/app_router.dart';
import 'package:watt_hub_localization/generated/l10n.dart';

@RoutePage()
class WattHubAppScreen extends StatelessWidget {
  const WattHubAppScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'Watt Hub!',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 40.0),
            ),
            const SizedBox(
              height: 40.0,
            ),
            ElevatedButton(
              onPressed: () => {
                AutoRouter.of(context).push(const SplashRoute()),
              },
              child: Text(S.of(context).nextPage),
            ),
          ],
        ).paddingAll(20.0),
      ),
    );
  }
}
