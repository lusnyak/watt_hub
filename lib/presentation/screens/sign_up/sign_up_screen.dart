import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:watt_hub/config/config.dart';
import 'package:watt_hub/utils/utils.dart';
import 'package:watt_hub_localization/watt_hub_localization.dart';
import 'package:watt_hub_uikit/watt_hub_uikit.dart';

import 'bloc/sign_up_bloc.dart';

@RoutePage()
class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<SignUpBloc>(),
      child: const _SignUpView(),
    );
  }
}

class _SignUpView extends StatelessWidget {
  const _SignUpView();

  @override
  Widget build(BuildContext context) {
    final signUpBloc = context.read<SignUpBloc>();

    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SingleChildScrollView(
              child: BlocConsumer<SignUpBloc, SignUpState>(
                listener: (context, state) {
                  state.maybeWhen(
                    success: (tokenData, email) {
                      // condition subject to change
                      if (tokenData?.token != null) {
                        AutoRouter.of(context).replace(
                          VerificationRoute(
                            token: tokenData?.token,
                            email: email,
                          ),
                        );

                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(
                              tokenData?.otpCode ?? "",
                              style: body18SemiBoldTextStyle.copyWith(
                                color: WattHubColors.whiteColor,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            backgroundColor: WattHubColors.primaryGreenColor,
                          ),
                        );
                      }
                    },
                    orElse: () => nil,
                  );
                },
                builder: (context, state) {
                  final (a, isChecked) = state.maybeWhen(
                    form: (emailValidated, checked) {
                      return (emailValidated, checked);
                    },
                    orElse: () {
                      return (false, false);
                    },
                  );

                  return Form(
                    key: signUpBloc.formKey,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(
                          "${AppLocalizations.of(context).helloThere} \u{1f44b}",
                          style: body24SemiBoldTextStyle,
                        ),
                        20.h.heightBox,
                        Text(
                          AppLocalizations.of(context).enterYourEmail,
                          style: body16RegularTextStyle,
                        ),
                        20.h.heightBox,
                        WHTextField.singleLine(
                          controller: signUpBloc.emailController,
                          onChanged: (value) {
                            signUpBloc.add( SignUpEvent.emailChanged(value)
                           ,
                            );
                          },
                          label: AppLocalizations.of(context).emailAddress,
                          hintText: 'johndoe@gmail.com',
                          keyboardType: TextInputType.emailAddress,
                          validator: (value) {
                            return validateEmail(value, context);
                          },
                        ),
                        20.h.heightBox,
                        Row(
                          children: [
                            Checkbox(
                              shape: roundedBorder6,
                              value: isChecked,
                              onChanged: (bool? value) {
                                if (value != null) {
                                  signUpBloc.add(
                                      SignUpEvent.checkboxChanged(value),
                                  );
                                }
                              },
                            ),
                            Expanded(
                              child: RichText(
                                text: TextSpan(
                                  text: AppLocalizations.of(context)
                                      .iAagreeToWattHub,
                                  style: body12RegularTextStyle,
                                  children: <TextSpan>[
                                    TextSpan(
                                      recognizer: TapGestureRecognizer()
                                        ..onTap = () async {
                                          await launchURL(
                                              AppConstants.privacyPolicyUrl);
                                        },
                                      text: AppLocalizations.of(context)
                                          .privacyPolicy,
                                      style: body12RegularTextStyle.copyWith(
                                          color:
                                              WattHubColors.primaryGreenColor),
                                    ),
                                    TextSpan(
                                      text: AppLocalizations.of(context)
                                          .andConfirm,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                },
              ),
            ).paddingSymmetric(horizontal: 20.w, vertical: 20.h).expanded(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Divider(),
                WHElevatedButton.primary(
                  title: AppLocalizations.of(context).continueText,
                  onPressed: () {
                    signUpBloc.add(const SignUpEvent.submitSignUp());
                  },
                ).paddingSymmetric(vertical: 16.h, horizontal: 20.w)
              ],
            )
          ],
        ),
      ),
    );
  }
}
