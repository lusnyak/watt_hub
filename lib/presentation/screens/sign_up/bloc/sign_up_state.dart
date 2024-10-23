part of 'sign_up_bloc.dart';

@freezed
class SignUpState with _$SignUpState {
  const factory SignUpState.form({
    required bool isEmailValid,
    required bool isChecked,
  }) = _SignUpFormState;

  const factory SignUpState.success({TokenModel? tokenData, String? email}) = _SignUpSuccessState;

  const factory SignUpState.failure(String message) = _SignUpFailureState;
}