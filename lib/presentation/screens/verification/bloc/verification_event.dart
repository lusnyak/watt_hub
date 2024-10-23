part of 'verification_bloc.dart';

@freezed
class VerificationEvent with _$VerificationEvent {
  const factory VerificationEvent.resendOtp(String? email) = ResendOtp;
  const factory VerificationEvent.verifyOtp({String? otpCode, String? token}) =
      VerifyOtp;
  const factory VerificationEvent.setValues({String? token, String? email}) = SetValuesEvent;
}
