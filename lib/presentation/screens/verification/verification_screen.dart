import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:watt_hub/config/routes/app_router.dart';
import 'package:watt_hub_localization/watt_hub_localization.dart';
import 'package:watt_hub_uikit/watt_hub_uikit.dart';

@RoutePage()
class VerificationScreen extends StatelessWidget {
  const VerificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                children: [
                  Text(
                    AppLocalizations.of(context).otpCodeVerification,
                    style: body24SemiBoldTextStyle,
                  ),
                  const Text("🔐")
                ],
              ),
              Text(
                AppLocalizations.of(context).sentAnOtpCode,
                style: body16RegularTextStyle,
              ),
              40.heightBox,
              const WHPinPut(),
              30.heightBox,
              Center(
                child: Text(
                  AppLocalizations.of(context).didntReceiveEmail,
                  style: body14RegularTextStyle,
                ),
              ),
              15.heightBox,
              Center(
                child: TextButton(
                  child: Text(
                    "resend",
                    style: body14SemiBoldTextStyle,
                  ),
                  onPressed: () {},
                ),
              ),
              WHElevatedButton.primary(
                title: AppLocalizations.of(context).continueText,
                onPressed: () => AutoRouter.of(context).replace(
                  const HomeRoute(),
                ),
              ),
            ],
          ),
        ),
      ).paddingAll(20.0),
    );
  }
}
