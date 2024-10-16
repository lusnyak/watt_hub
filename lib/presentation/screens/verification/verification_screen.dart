import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:watt_hub_localization/watt_hub_localization.dart';
import 'package:watt_hub_uikit/watt_hub_uikit.dart';

import '../../../config/locator/service_locator.dart';
import '../../../config/routes/app_router.dart';
import 'bloc/verification_bloc.dart';

@RoutePage()
class VerificationScreen extends StatelessWidget {
  const VerificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<VerificationBloc>(),
      child: const _VerificationView(),
    );
  }
}

class _VerificationView extends StatelessWidget {
  const _VerificationView();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: BlocListener<VerificationBloc, VerificationState>(
          listener: (context, state) {
            state.map(
              initial: (_) {},
              loading: (_) {},
              success: (_) {
                AutoRouter.of(context).replace(const HomeRoute());
              },
              failure: (failure) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text(failure.error)),
                );
              },
            );
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
                40.heightBox,
                BlocBuilder<VerificationBloc, VerificationState>(
                  builder: (context, state) {
                    return Column(
                      children: [
                        const WHPinPut(),
                        30.heightBox,
                        if (state is VerificationLoading)
                          const CircularProgressIndicator(),
                      ],
                    );
                  },
                ),
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
                    onPressed: () {
                      context
                          .read<VerificationBloc>()
                          .add(const VerificationEvent.resendOtp());
                    },
                  ),
                ),
                200.heightBox,
                const Divider(color: WattHubColors.primaryLightGreenColor),
                WHElevatedButton.primary(
                  title: AppLocalizations.of(context).continueText,
                  onPressed: () {
                    const otpCode = '1234';
                    context
                        .read<VerificationBloc>()
                        .add(const VerificationEvent.verifyOtp(otpCode));
                  },
                ),
              ],
            ).expanded(),
          ).paddingAll(20.0),
        ),
      ),
    );
  }
}
