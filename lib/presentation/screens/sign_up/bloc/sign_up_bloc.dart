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

  SignUpBloc()
      : super(const SignUpState.form(isEmailValid: false, isChecked: false)) {
    on<EmailChanged>(validateEmail);

    on<CheckboxChanged>((event, emit) {
      emailController.clear();

      state.when(
        form: (isEmailValid, _) {
          emit(SignUpState.form(
            isEmailValid: isEmailValid,
            isChecked: event.isChecked,
          ));
        },
        success: () => emit(
            SignUpState.form(isEmailValid: false, isChecked: event.isChecked)),
        failure: (_) => emit(
            SignUpState.form(isEmailValid: false, isChecked: event.isChecked)),
      );
    });

    on<SubmitSignUp>((event, emit) {
      state.when(
        form: (isEmailValid, isChecked) {
          if (isEmailValid && isChecked) {
            emit(const SignUpState.success());
          } else {
            emit(const SignUpState.failure(
                'Please agree to the terms and enter a valid email.'));
          }
        },
        success: () {},
        failure: (_) {},
      );
    });
  }

  bool _validateEmail(String email) {
    return RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(email);
  }

  void validateEmail(EmailChanged event, Emitter<SignUpState> emit) {
    final isValidEmail = _validateEmail(event.email);

    state.when(
      form: (isEmailValid, isChecked) {
        emit(SignUpState.form(
          isEmailValid: isValidEmail,
          isChecked: isChecked,
        ));
      },
      success: () =>
          emit(SignUpState.form(isEmailValid: isValidEmail, isChecked: false)),
      failure: (_) =>
          emit(SignUpState.form(isEmailValid: isValidEmail, isChecked: false)),
    );
  }

  void disposeController() {
    emailController.dispose();
  }
}
