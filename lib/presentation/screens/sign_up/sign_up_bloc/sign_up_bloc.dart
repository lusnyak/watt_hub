import 'package:flutter_bloc/flutter_bloc.dart';

part 'sign_up_event.dart';
part 'sign_up_state.dart';

class SignUpBloc extends Bloc<SignUpEvent, SignUpState> {
  SignUpBloc() : super(SignUpFormState(isEmailValid: false, isChecked: false)) {
    on<EmailChanged>((event, emit) {
      final isValidEmail = _validateEmail(event.email);
      emit(SignUpFormState(
        isEmailValid: isValidEmail,
        isChecked: state is SignUpFormState
            ? (state as SignUpFormState).isChecked
            : false,
      ));
    });

    on<CheckboxChanged>((event, emit) {
      emit(SignUpFormState(
        isEmailValid: state is SignUpFormState
            ? (state as SignUpFormState).isEmailValid
            : false,
        isChecked: event.isChecked,
      ));
    });

    on<SubmitSignUp>((event, emit) {
      if (state is SignUpFormState) {
        final formState = state as SignUpFormState;
        if (formState.isEmailValid && formState.isChecked) {
          emit(SignUpSuccess());
        } else {
          emit(SignUpFailure(
              'Please agree to the terms and enter a valid email.'));
        }
      }
    });
  }

  bool _validateEmail(String email) {
    return RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(email);
  }
}
