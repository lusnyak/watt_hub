import 'package:auto_route/auto_route.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:watt_hub/config/routes/app_router.dart';
import 'package:watt_hub_localization/watt_hub_localization.dart';
import 'package:watt_hub_uikit/watt_hub_uikit.dart';

@RoutePage()
class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter an email';
    }
    if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
      return 'Please enter a valid email';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                children: [
                  Text(
                    AppLocalizations.of(context).helloThere,
                    style: body24SemiBoldTextStyle,
                  ),
                  const Text("👋")
                ],
              ),
              20.heightBox,
              Text(
                AppLocalizations.of(context).enterYourEmail,
                style: body16RegularTextStyle,
              ),
              20.heightBox,
              WHTextField.singleLine(
                validator: validateEmail,
                label: AppLocalizations.of(context).emailAddress,
                hintText: '',
                keyboardType: TextInputType.emailAddress,
              ),
              20.heightBox,
              RichText(
                  text: TextSpan(
                text: 'I agree to EvPoint ',
                style: body16RegularTextStyle,
                children: <TextSpan>[
                  TextSpan(
                      recognizer: TapGestureRecognizer()..onTap,
                      text: 'Public Agreement. Terms. Privacy Policy ',
                      style: green16RegularTextStyle),
                  const TextSpan(
                      text: 'and confirm that I am over 17 years old.'),
                ],
              )),
              80.heightBox,
              WHElevatedButton.primary(
                title: AppLocalizations.of(context).continueText,
                onPressed: () => AutoRouter.of(context).push(
                  const VerificationRoute(),
                ),
              ),
            ],
          ),
        ),
      ).paddingAll(20.0),
    );
  }
}
