import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:watt_hub/config/locator/service_locator.dart';
import 'package:watt_hub/data/repository/auth_repository.dart';
import 'package:watt_hub/domain/models/token_model/token_model.dart';

part 'sign_up_bloc.freezed.dart';
part 'sign_up_event.dart';
part 'sign_up_state.dart';

@injectable
class SignUpBloc extends Bloc<SignUpEvent, SignUpState> {
  final TextEditingController emailController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  SignUpBloc()
      : super(
          const SignUpState.form(isEmailValid: false, isChecked: false),
        ) {
    on<EmailChangedEvent>(validateEmail);

    on<CheckboxChangedEvent>((event, emit) {
      state.when( 
        form: (isEmailValid, _) {
          emit(SignUpState.form(
            isEmailValid: isEmailValid,
            isChecked: event.isChecked,
          ));
        },
        success: (tokenData, email) => emit(SignUpState.form(
          isEmailValid: false,
          isChecked: event.isChecked,
        )),
        failure: (_) => emit(SignUpState.form(
          isEmailValid: false,
          isChecked: event.isChecked,
        )),
      );
    });

    on<SubmitSignUpEvent>((event, emit) async {
      if (formKey.currentState?.validate() ?? false) {
        try {
          final TokenModel? tokenData =
              await getIt<AuthRepository>().userConnect(emailController.text);
          emit(SignUpState.success(
            tokenData: tokenData,
            email: emailController.text,
          ));
        } catch (e) {
          emit(SignUpState.failure(e.toString()));
        }
      } else {
        emit(const SignUpState.failure('Please ensure all fields are valid.'));
      }
    });
  }

  bool _validateEmail(String email) {
    return RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(email);
  }

  void validateEmail(EmailChangedEvent event, Emitter<SignUpState> emit) {
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
