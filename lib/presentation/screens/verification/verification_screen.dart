import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:watt_hub/config/routes/app_router.dart';
import 'package:watt_hub_localization/watt_hub_localization.dart';
import 'package:watt_hub_uikit/watt_hub_uikit.dart';

import '../../../config/locator/service_locator.dart';
import 'bloc/verification_bloc.dart';

@RoutePage()
class VerificationScreen extends StatelessWidget {
  const VerificationScreen({
    super.key,
    this.token,
    this.email,
  });

  final String? token;
  final String? email;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<VerificationBloc>()
        ..add(VerificationEvent.setValues(token: token, email: email)),
      child: const _VerificationView(),
    );
  }
}

class _VerificationView extends StatelessWidget {
  const _VerificationView();

  @override
  Widget build(BuildContext context) {
    final verificationBloc = context.read<VerificationBloc>();
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: BlocListener<VerificationBloc, VerificationState>(
          listener: (context, state) {
            if (state is VerificationSuccess) {
              if (state.flag == true) {
                AutoRouter.of(context).replace(const HomeRoute());
              } else if (state.resendData != null) {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Text(
                    state.resendData?.otpCode ?? '',
                    style: body18RegularTextStyle,
                  ),
                  backgroundColor: WattHubColors.primaryGreenColor,
                ));
              }
            } else if (state is VerificationFailure) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(state.error),
                ),
              );
            }
          },
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  "${AppLocalizations.of(context).otpCodeVerification} \u{1F510}",
                  style: body24SemiBoldTextStyle,
                ),
                Text(
                  AppLocalizations.of(context).sentAnOtpCode,
                  style: body16RegularTextStyle,
                ),
                40.h.heightBox,
                BlocBuilder<VerificationBloc, VerificationState>(
                  builder: (context, state) {
                    return Column(
                      children: [
                        WHPinPut(
                          onCompleted: (val) {
                            if (state is VerificationSuccess) {
                              verificationBloc.add(
                                VerificationEvent.verifyOtp(
                                  otpCode: val,
                                  token: state.token,
                                ),
                              );
                            }
                          },
                        ),
                        30.h.heightBox,
                        if (state is VerificationLoading)
                          const WHCircularSpin(),
                      ],
                    );
                  },
                ),
                20.h.heightBox,
                Text(
                  AppLocalizations.of(context).didntReceiveEmail,
                  style: body14RegularTextStyle,
                  textAlign: TextAlign.center,
                ),
                15.h.heightBox,
                BlocBuilder<VerificationBloc, VerificationState>(
                    builder: (context, state) {
                  return WHTextButton.create(
                    onPressed: () {
                      if (state is VerificationSuccess) {
                        debugPrint('${state.email} email');
                        verificationBloc.add(
                          VerificationEvent.resendOtp(state.email),
                        );
                      }
                    },
                    text: AppLocalizations.of(context).resend,
                    color: WattHubColors.primaryGreenColor,
                  );
                })
              ],
            ),
          ).paddingAll(20.r),
        ),
      ),
    );
  }
}
