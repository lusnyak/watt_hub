import 'package:auto_route/auto_route.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:watt_hub_localization/watt_hub_localization.dart';
import 'package:watt_hub_uikit/watt_hub_uikit.dart';

import '../../../config/locator/service_locator.dart';
import '../../../config/routes/app_router.dart';
import 'bloc/sign_up_bloc.dart';

@RoutePage()
class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<SignUpBloc>(),
      child: _SignUpView(),
    );
  }
}

class _SignUpView extends StatelessWidget {
  _SignUpView();

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: BlocConsumer<SignUpBloc, SignUpState>(
            listener: (context, state) {
              if (state is SignUpSuccess) {
                AutoRouter.of(context).push(const VerificationRoute());
              }
            },
            builder: (context, state) {
              final emailState = state is SignUpFormState;

              return Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      "${AppLocalizations.of(context).helloThere} \u{1f44b}",
                      style: body24SemiBoldTextStyle,
                    ),
                    20.heightBox,
                    Text(
                      AppLocalizations.of(context).enterYourEmail,
                      style: body16RegularTextStyle,
                    ),
                    20.heightBox,

                    // Email input field with validation
                    WHTextField.singleLine(
                      controller: context.read<SignUpBloc>().emailController,
                      onChanged: (value) {
                        context.read<SignUpBloc>().add(EmailChanged(value));
                      },
                      label: AppLocalizations.of(context).emailAddress,
                      hintText: 'johndoe@gmail.com',
                      keyboardType: TextInputType.emailAddress,
                      validator: (value) {
                        return _validateEmail(value);
                      },
                    ),
                    20.heightBox,
                    Row(
                      children: [
                        Checkbox(
                          shape: roundedBorder6,
                          value: emailState ? (state).isChecked : false,
                          onChanged: (bool? value) {
                            context
                                .read<SignUpBloc>()
                                .add(CheckboxChanged(value ?? false));
                          },
                        ),
                        Expanded(
                          child: RichText(
                            text: TextSpan(
                              text: AppLocalizations.of(context).iAagreeToWattHub,
                              style: body16RegularTextStyle,
                              children: <TextSpan>[
                                TextSpan(
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () async {
                                      final url = Uri.parse(
                                          'https://termsfeed.com/live/cc373245-d9b0-410d-960c-db897b26bffc');
                                      if (await canLaunchUrl(url)) {
                                        await launchUrl(url);
                                      }
                                    },
                                  text: AppLocalizations.of(context).privacyPolicy,
                                  style: green16RegularTextStyle,
                                ),
                                 TextSpan(
                                  text: AppLocalizations.of(context).andConfirm,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    210.heightBox,
                    const Divider(color: WattHubColors.primaryLightGreenColor),
                    WHElevatedButton.primary(
                      title: AppLocalizations.of(context).continueText,
                      onPressed: () {
                        if (_formKey.currentState?.validate() ?? false) {
                          context.read<SignUpBloc>().add(const SubmitSignUp());
                        }
                      },
                    ),
                  ],
                ),
              );
            },
          ),
        ).paddingAll(20.w),
      ),
    );
  }

  // Method to validate email
  String? _validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter email';
    }
    if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
      return 'Please enter a valid email';
    }
    return null;
  }
}
