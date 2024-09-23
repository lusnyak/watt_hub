import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:watt_hub/presentation/screens/splash/splash_screen.dart';

class WattHubApp extends StatelessWidget {
  const WattHubApp({super.key});

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
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const SplashScreen(),
                ),
              ),
              child: const Text('Next page!'),
            ),
          ],
        ).paddingAll(20.0),
      ),
    );
  }
}
