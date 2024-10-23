part of 'verification_bloc.dart';

@freezed
class VerificationEvent with _$VerificationEvent {
  const factory VerificationEvent.resendOtp() = ResendOtp;
  const factory VerificationEvent.verifyOtp({String? otpCode, String? token}) =
      VerifyOtp;
  const factory VerificationEvent.setToken(String? token) = SetTokenEvent;
}
