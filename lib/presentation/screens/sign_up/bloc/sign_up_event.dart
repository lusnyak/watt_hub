part of 'sign_up_bloc.dart';

@freezed
class SignUpEvent with _$SignUpEvent {
  const factory SignUpEvent.emailChanged(String email) = _EmailChangedEvent;
  const factory SignUpEvent.checkboxChanged(bool isChecked) = _CheckboxChangedEvent;
  const factory SignUpEvent.submitSignUp() = _SubmitSignUpEvent;
}