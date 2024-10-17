part of 'sign_up_bloc.dart';

@freezed
class SignUpEvent with _$SignUpEvent {
  const factory SignUpEvent.emailChanged(String email) = EmailChanged;
  const factory SignUpEvent.checkboxChanged(bool isChecked) = CheckboxChanged;
  const factory SignUpEvent.submitSignUp() = SubmitSignUp;
}