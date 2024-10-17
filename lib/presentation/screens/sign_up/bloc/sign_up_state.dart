part of 'sign_up_bloc.dart';

@freezed
class SignUpState with _$SignUpState {
  const factory SignUpState.form({
    required bool isEmailValid,
    required bool isChecked,
  }) = _SignUpFormState;

  const factory SignUpState.success() = _SignUpSuccess;

  const factory SignUpState.failure(String message) = _SignUpFailure;
}
