part of 'sign_up_bloc.dart';

@freezed
class SignUpState with _$SignUpState {
  const factory SignUpState.form({
    required bool isEmailValid,
    required bool isChecked,
  }) = SignUpFormState;

  const factory SignUpState.success() = SignUpSuccess;

  const factory SignUpState.failure(String message) = SignUpFailure;
}
