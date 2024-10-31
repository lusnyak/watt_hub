import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:watt_hub/config/locator/service_locator.dart';
import 'package:watt_hub/data/repository/auth_repository.dart';
import 'package:watt_hub/domain/models/token_model/token_model.dart';

part 'verification_bloc.freezed.dart';
part 'verification_event.dart';
part 'verification_state.dart';

@injectable
class VerificationBloc extends Bloc<VerificationEvent, VerificationState> {
  final TextEditingController pinController = TextEditingController();

  VerificationBloc() : super(const VerificationState.initial()) {
    on<_ResendOtpEvent>((event, emit) async {
      emit(const VerificationState.loading());
      try {
        final TokenModel? resendData =
            await getIt<AuthRepository>().userConnect(event.email);
        emit(VerificationState.success(
          resendData: resendData,
          email: event.email,
          token: resendData?.token,
        ));
        pinController.clear();
      } catch (e) {
        emit(const VerificationState.failure('Failed to resend OTP'));
      }
    });

    on<_VerifyOtpEvent>(
      (event, emit) async {
        emit(const VerificationState.loading());
        try {
          final flag = await getIt<AuthRepository>()
              .userVerification(event.otpCode, event.token);
          emit(VerificationState.success(
            flag: flag,
            email: event.email,
          ));
        } catch (e) {
          emit(
            VerificationState.failure('Verification failed: ${e.toString()}'),
          );
        }
      },
    );

    on<_SetValuesEvent>((event, emit) {
      if (event.token != null) {
        emit(VerificationState.success(token: event.token, email: event.email));
      }
    });
  }
}
