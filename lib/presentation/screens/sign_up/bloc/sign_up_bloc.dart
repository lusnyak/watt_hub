import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'sign_up_bloc.freezed.dart';
part 'sign_up_event.dart';
part 'sign_up_state.dart';

@injectable
class SignUpBloc extends Bloc<SignUpEvent, SignUpState> {
  final TextEditingController emailController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  SignUpBloc()
      : super(const SignUpState.form(isEmailValid: false, isChecked: false)) {
    on<EmailChanged>(validateEmail);

    on<CheckboxChanged>((event, emit) {
      state.when(
        form: (isEmailValid, _) {
          emit(SignUpState.form(
            isEmailValid: isEmailValid,
            isChecked: event.isChecked, // Update the checked state
          ));
        },
        success: () => emit(
            SignUpState.form(isEmailValid: false, isChecked: event.isChecked)),
        failure: (_) => emit(
            SignUpState.form(isEmailValid: false, isChecked: event.isChecked)),
      );
    });

    on<SubmitSignUp>((event, emit) {
      if (formKey.currentState?.validate() ?? false) {
        emit(const SignUpState.success());
      } else {
        emit(const SignUpState.failure('Please ensure all fields are valid.'));
      }
    });
  }

  bool _validateEmail(String email) {
    return RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(email);
  }

  void validateEmail(EmailChanged event, Emitter<SignUpState> emit) {
    final isValidEmail = _validateEmail(event.email);

    emit(
      state.maybeWhen(
        form: (_, isChecked) => SignUpState.form(
          isEmailValid: isValidEmail,
          isChecked: isChecked,
        ),
        orElse: () => state,
      ),
    );
  }

  void disposeController() {
    emailController.dispose();
  }
}
