part of 'sign_up_bloc.dart';

@freezed
class SignUpEvent with _$SignUpEvent {
  const factory SignUpEvent.emailChanged(String email) = EmailChangedEvent;
  const factory SignUpEvent.checkboxChanged(bool isChecked) = CheckboxChangedEvent;
  const factory SignUpEvent.submitSignUp() = SubmitSignUpEvent;
}