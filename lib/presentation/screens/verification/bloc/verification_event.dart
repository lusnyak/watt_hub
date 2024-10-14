part of 'verification_bloc.dart';

@freezed
class VerificationEvent with _$VerificationEvent {
  const factory VerificationEvent.resendOtp() = ResendOtp;
  const factory VerificationEvent.verifyOtp(String otpCode) = VerifyOtp;
}
