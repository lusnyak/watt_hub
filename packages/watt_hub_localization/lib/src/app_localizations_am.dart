import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Amharic (`am`).
class AppLocalizationsAm extends AppLocalizations {
  AppLocalizationsAm([String locale = 'am']) : super(locale);

  @override
  String get nextPage => 'Հաջորդ էջ';

  @override
  String get back => 'Հետ';

  @override
  String get helloThere => 'Բարև ձեզ';

  @override
  String get enterYourEmail =>
      'Խնդրում ենք մուտքագրել ձեր էլփոստի հասցեն: Ստուգման գործընթացի համար հաջորդ քայլում կստանաք OTP կոդը:';

  @override
  String get emailAddress => 'Էլփոստի հասցե';

  @override
  String get continueText => 'Շարունակել';

  @override
  String get otpCodeVerification => 'OTP կոդի ստուգում ';

  @override
  String get sentAnOtpCode =>
      'Մենք ուղարկել ենք OTP կոդը էլեկտրոնային հասցեին: Շարունակելու համար մուտքագրեք OTP կոդը:';

  @override
  String get didntReceiveEmail => 'Էլփոստին չե՞ք ստացել:';
}
