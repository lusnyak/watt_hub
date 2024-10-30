part of 'verification_bloc.dart';

@freezed
class VerificationEvent with _$VerificationEvent {
  const factory VerificationEvent.resendOtp(String? email) = _ResendOtpEvent;
  const factory VerificationEvent.verifyOtp({String? otpCode, String? token, String? email}) =
      _VerifyOtpEvent;
  const factory VerificationEvent.setValues({String? token, String? email}) = _SetValuesEvent;
}
