import 'package:auto_route/auto_route.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:watt_hub/config/routes/app_router.dart';
import 'package:watt_hub_localization/watt_hub_localization.dart';
import 'package:watt_hub_uikit/watt_hub_uikit.dart';

import '../../../config/locator/service_locator.dart';
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
    return BlocProvider(
      create: (_) => SignUpBloc(),
      child: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: BlocConsumer<SignUpBloc, SignUpState>(
              listener: (context, state) {
                if (state is SignUpSuccess) {
                  AutoRouter.of(context).push(const VerificationRoute());
                } else if (state is SignUpFailure) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      backgroundColor: WattHubColors.redColor,
                      content: Text(state.message),
                    ),
                  );
                }
              },
              builder: (context, state) {
                final emailState = state is SignUpFormState;

                return Column(
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

                    /// TODO: - add validation
                    WHTextField.singleLine(
                      controller: context.read<SignUpBloc>().emailController,
                      onChanged: (value) {
                        context.read<SignUpBloc>().add(EmailChanged(value));
                      },
                      label: AppLocalizations.of(context).emailAddress,
                      hintText: 'johndoe@gmail.com',
                      keyboardType: TextInputType.emailAddress,
                    ),
                    20.heightBox,
                    Row(
                      children: [
                        Checkbox(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6),
                          ),
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
                              text: 'I agree to WattHub ',
                              style: body12RegularTextStyle,
                              children: <TextSpan>[
                                TextSpan(
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {},
                                  text:
                                      'Public Agreement. Terms. Privacy Policy ',
                                  style: body12RegularTextStyle.copyWith(color: WattHubColors.primaryGreenColor),

                                ),
                                const TextSpan(
                                  text:
                                      'and confirm that I am over 17 years old.',
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    80.heightBox,
                    WHElevatedButton.primary(
                      title: AppLocalizations.of(context).continueText,
                      onPressed: () {
                        context.read<SignUpBloc>().add(
                              const SubmitSignUp(),
                            );
                      },
                    ),
                  ],
                );
              },
            ),
          ),
        ).paddingAll(20.w),
      ),
    );
  }
}
