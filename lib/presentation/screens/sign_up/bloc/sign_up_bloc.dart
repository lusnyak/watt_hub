import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_up_bloc.freezed.dart';

part 'sign_up_event.dart';

part 'sign_up_state.dart';

/// TODO: - inject bloc
///
class SignUpBloc extends Bloc<SignUpEvent, SignUpState> {
  final TextEditingController emailController = TextEditingController();


  SignUpBloc()
      : super(const SignUpState.form(isEmailValid: false, isChecked: false)) {
    on<EmailChanged>(validateEmail);


    on<CheckboxChanged>((event, emit) {
      emailController.clear();
      emit(SignUpState.form(
        isEmailValid: state.maybeMap(
          form: (formState) => formState.isEmailValid,
          orElse: () => false,
        ),
        isChecked: event.isChecked,
      ));
    });

    on<SubmitSignUp>(
      (event, emit) {
        if (state is SignUpFailure) {}
        if (state is SignUpFormState) {
          final formState = state as SignUpFormState;
          if (formState.isEmailValid && formState.isChecked) {
            emit(const SignUpState.success());
          } else {
            emit(
              const SignUpState.failure(
                  'Please agree to the terms and enter a valid email.'),
            );
          }
        }
      },
    );
  }

  bool _validateEmail(String email) {
    return RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(email);
  }

  void validateEmail(event, emit) {
    final isValidEmail = _validateEmail(event.email);
    emit(SignUpState.form(
      isEmailValid: isValidEmail,
      isChecked: state.maybeMap(
        form: (formState) => formState.isChecked,
        orElse: () => false,
      ),
    ));
  }
  void disposeController() {
    emailController.dispose();
  }
}
