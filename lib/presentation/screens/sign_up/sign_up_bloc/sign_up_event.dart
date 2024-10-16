part of 'sign_up_bloc.dart';

abstract class SignUpEvent {}

class EmailChanged extends SignUpEvent {
  final String email;

  EmailChanged(this.email);
}

class CheckboxChanged extends SignUpEvent {
  final bool isChecked;

  CheckboxChanged(this.isChecked);
}

class SubmitSignUp extends SignUpEvent {}
