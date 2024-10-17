part of 'verification_bloc.dart';

@freezed
class VerificationState with _$VerificationState {
  const factory VerificationState.initial() = VerificationInitial;
  const factory VerificationState.loading() = VerificationLoading;
  const factory VerificationState.success() = VerificationSuccess;
  const factory VerificationState.failure(String error) = VerificationFailure;
}
