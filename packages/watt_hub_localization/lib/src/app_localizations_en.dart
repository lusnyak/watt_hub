import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get nextPage => 'Next Page';

  @override
  String get back => 'Back';

  @override
  String get helloThere => 'Hello there';

  @override
  String get enterYourEmail =>
      'Please enter your email address. You will receive an OTP code in the next step for the verification process.';

  @override
  String get emailAddress => 'Email Address';

  @override
  String get continueText => 'Continue';
}
