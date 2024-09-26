import 'package:auto_route/auto_route.dart';
import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:watt_hub/config/locator/service_locator.dart';
import 'package:watt_hub/config/routes/app_router.dart';
import 'package:watt_hub/presentation/screens/splash/my_service.dart';

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
                AutoRouter.of(context).push(const WattHubAppRoute()),
              },
              child: const Text('Back'), // Text(S.of(context).back)
            ),
            ElevatedButton(
              onPressed: () => {
                myService.doSomething(),
                AutoRouter.of(context).push(const UsersListRoute()),
              },
              child: const Text('Next Page'), // Text(S.of(context).nextPage)
            ),
            // ElevatedButton(
            //   onPressed: () {
            //     S.delegate.load(const Locale('en'));
            //     // context.read<LanguageBloc>().add(ChangeLanguage('en'));
            //   },
            //   child: const Text('English'),
            // ),
            // ElevatedButton(
            //   onPressed: () {
            //     S.delegate.load(const Locale('am'));
            //     // context.read<LanguageBloc>().add(ChangeLanguage('am'));
            //   },
            //   child: const Text('Armenian'),
            // ),
          ],
        ).paddingAll(20.0),
      ),
    );
  }
}
