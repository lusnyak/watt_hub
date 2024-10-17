import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../config/network/otp_service.dart';

part 'verification_bloc.freezed.dart';
part 'verification_event.dart';
part 'verification_state.dart';

@injectable
class VerificationBloc extends Bloc<VerificationEvent, VerificationState> {
  final OtpService _otpService;

  VerificationBloc(this._otpService)
      : super(const VerificationState.initial()) {
    on<ResendOtp>((event, emit) async {
      emit(const VerificationState.loading());
      try {
        await _otpService.resendOtp();
        emit(const VerificationState.initial());
      } catch (e) {
        emit(const VerificationState.failure('Failed to resend OTP'));
      }
    });

    on<VerifyOtp>(
      (event, emit) async {
        emit(
          const VerificationState.loading(),
        );
        try {
          final isValid = await _otpService.verifyOtp(event.otpCode);
          if (isValid) {
            emit(
              const VerificationState.success(),
            );
          } else {
            emit(
              const VerificationState.failure('Invalid OTP code'),
            );
          }
        } catch (e) {
          emit(
            VerificationState.failure('Verification failed: ${e.toString()}'),
          );
        }
      },
    );
  }
}
