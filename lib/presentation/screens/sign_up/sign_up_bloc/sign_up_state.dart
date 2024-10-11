part of 'sign_up_bloc.dart';

abstract class SignUpState {
  const SignUpState();
}

class SignUpInitial extends SignUpState {}

class SignUpSuccess extends SignUpState {}

class SignUpFailure extends SignUpState {
  final String message;

  SignUpFailure(this.message);
}

class SignUpFormState extends SignUpState {
  final bool isEmailValid;
  final bool isChecked;

  SignUpFormState({
    required this.isEmailValid,
    required this.isChecked,
  });
}
