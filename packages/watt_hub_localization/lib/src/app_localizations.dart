import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_am.dart';
import 'app_localizations_en.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'src/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
      : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations)!;
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('am'),
    Locale('en')
  ];

  /// No description provided for @nextPage.
  ///
  /// In en, this message translates to:
  /// **'Next Page'**
  String get nextPage;

  /// No description provided for @back.
  ///
  /// In en, this message translates to:
  /// **'Back'**
  String get back;

  /// No description provided for @helloThere.
  ///
  /// In en, this message translates to:
  /// **'Hello there'**
  String get helloThere;

  /// No description provided for @enterYourEmail.
  ///
  /// In en, this message translates to:
  /// **'Please enter your email address. You will receive an OTP code in the next step for the verification process.'**
  String get enterYourEmail;

  /// No description provided for @emailAddress.
  ///
  /// In en, this message translates to:
  /// **'Email Address'**
  String get emailAddress;

  /// No description provided for @continueText.
  ///
  /// In en, this message translates to:
  /// **'Continue'**
  String get continueText;

  /// No description provided for @otpCodeVerification.
  ///
  /// In en, this message translates to:
  /// **'OTP code verification '**
  String get otpCodeVerification;

  /// No description provided for @sentAnOtpCode.
  ///
  /// In en, this message translates to:
  /// **'We have sent an OTP code to email address. Enter the OTP code below to continue.'**
  String get sentAnOtpCode;

  /// No description provided for @didntReceiveEmail.
  ///
  /// In en, this message translates to:
  /// **'Didn\'t receive email?'**
  String get didntReceiveEmail;

  /// No description provided for @pleaseAgree.
  ///
  /// In en, this message translates to:
  /// **'Please agree to the terms and enter a valid email.'**
  String get pleaseAgree;

  /// No description provided for @privacyPolicy.
  ///
  /// In en, this message translates to:
  /// **'Privacy Policy '**
  String get privacyPolicy;

  /// No description provided for @iAagreeToWattHub.
  ///
  /// In en, this message translates to:
  /// **'I agree to WattHub '**
  String get iAagreeToWattHub;

  /// No description provided for @andConfirm.
  ///
  /// In en, this message translates to:
  /// **'and confirm that I am over 17 years old.'**
  String get andConfirm;

  /// No description provided for @resend.
  ///
  /// In en, this message translates to:
  /// **'resend'**
  String get resend;

  /// No description provided for @pleaseEnterEmail.
  ///
  /// In en, this message translates to:
  /// **'Please enter email'**
  String get pleaseEnterEmail;

  /// No description provided for @pleaseEnterAValidEmail.
  ///
  /// In en, this message translates to:
  /// **'Please enter a valid email'**
  String get pleaseEnterAValidEmail;

  /// No description provided for @account.
  ///
  /// In en, this message translates to:
  /// **'Account'**
  String get account;

  /// No description provided for @myCar.
  ///
  /// In en, this message translates to:
  /// **'My Car'**
  String get myCar;

  /// No description provided for @myStation.
  ///
  /// In en, this message translates to:
  /// **'My Station'**
  String get myStation;

  /// No description provided for @helpCenter.
  ///
  /// In en, this message translates to:
  /// **'Help Center'**
  String get helpCenter;

  /// No description provided for @about.
  ///
  /// In en, this message translates to:
  /// **'About'**
  String get about;

  /// No description provided for @logout.
  ///
  /// In en, this message translates to:
  /// **'Logout'**
  String get logout;

  /// No description provided for @fullName.
  ///
  /// In en, this message translates to:
  /// **'Full Name'**
  String get fullName;

  /// No description provided for @phone.
  ///
  /// In en, this message translates to:
  /// **'Phone Number'**
  String get phone;

  /// No description provided for @personalInfo.
  ///
  /// In en, this message translates to:
  /// **'Personal Info'**
  String get personalInfo;

  /// No description provided for @stationInfo.
  ///
  /// In en, this message translates to:
  /// **'Station Info'**
  String get stationInfo;

  /// No description provided for @carInfo.
  ///
  /// In en, this message translates to:
  /// **'Car Info'**
  String get carInfo;

  /// No description provided for @max.
  ///
  /// In en, this message translates to:
  /// **'Max'**
  String get max;

  /// No description provided for @hourlyRateFull.
  ///
  /// In en, this message translates to:
  /// **'Hourly Rate'**
  String get hourlyRateFull;

  /// No description provided for @location.
  ///
  /// In en, this message translates to:
  /// **'Location'**
  String get location;

  /// No description provided for @street.
  ///
  /// In en, this message translates to:
  /// **'Street:'**
  String get street;

  /// No description provided for @navigate.
  ///
  /// In en, this message translates to:
  /// **'Navigate'**
  String get navigate;

  /// No description provided for @shareLocation.
  ///
  /// In en, this message translates to:
  /// **'Share Location'**
  String get shareLocation;

  /// No description provided for @serviceInformation.
  ///
  /// In en, this message translates to:
  /// **'Service Information'**
  String get serviceInformation;

  /// No description provided for @availableHours.
  ///
  /// In en, this message translates to:
  /// **'Available hours:'**
  String get availableHours;

  /// No description provided for @connectorType.
  ///
  /// In en, this message translates to:
  /// **'Connector Type'**
  String get connectorType;

  /// No description provided for @contact.
  ///
  /// In en, this message translates to:
  /// **'Contact'**
  String get contact;

  /// No description provided for @select.
  ///
  /// In en, this message translates to:
  /// **'Select'**
  String get select;

  /// No description provided for @home.
  ///
  /// In en, this message translates to:
  /// **'Home'**
  String get home;

  /// No description provided for @requests.
  ///
  /// In en, this message translates to:
  /// **'Requests'**
  String get requests;

  /// No description provided for @profile.
  ///
  /// In en, this message translates to:
  /// **'Profile'**
  String get profile;

  /// No description provided for @noData.
  ///
  /// In en, this message translates to:
  /// **'No Data'**
  String get noData;

  /// No description provided for @reviews.
  ///
  /// In en, this message translates to:
  /// **'reviews'**
  String get reviews;

  /// No description provided for @view.
  ///
  /// In en, this message translates to:
  /// **'View'**
  String get view;

  /// No description provided for @book.
  ///
  /// In en, this message translates to:
  /// **'Book'**
  String get book;

  /// No description provided for @kilowatt.
  ///
  /// In en, this message translates to:
  /// **'Kilowatt'**
  String get kilowatt;

  /// No description provided for @hourlyRate.
  ///
  /// In en, this message translates to:
  /// **'Hourly rate'**
  String get hourlyRate;

  /// No description provided for @filter.
  ///
  /// In en, this message translates to:
  /// **'Filter'**
  String get filter;

  /// No description provided for @rating.
  ///
  /// In en, this message translates to:
  /// **'Rating'**
  String get rating;

  /// No description provided for @chooseCar.
  ///
  /// In en, this message translates to:
  /// **'Choos Car Type'**
  String get chooseCar;

  /// No description provided for @chooseConnector.
  ///
  /// In en, this message translates to:
  /// **'Choose Connector'**
  String get chooseConnector;

  /// No description provided for @chooseAddress.
  ///
  /// In en, this message translates to:
  /// **'Choose an address'**
  String get chooseAddress;

  /// No description provided for @timePicker.
  ///
  /// In en, this message translates to:
  /// **'Time picker'**
  String get timePicker;

  /// No description provided for @startTime.
  ///
  /// In en, this message translates to:
  /// **'Start time'**
  String get startTime;

  /// No description provided for @endTime.
  ///
  /// In en, this message translates to:
  /// **'End time'**
  String get endTime;

  /// No description provided for @contactInfo.
  ///
  /// In en, this message translates to:
  /// **'Contact info'**
  String get contactInfo;

  /// No description provided for @yourPhoneNumber.
  ///
  /// In en, this message translates to:
  /// **'Enter your phone number'**
  String get yourPhoneNumber;

  /// No description provided for @name.
  ///
  /// In en, this message translates to:
  /// **'Name'**
  String get name;

  /// No description provided for @yourName.
  ///
  /// In en, this message translates to:
  /// **'Enter your name'**
  String get yourName;

  /// No description provided for @stationImage.
  ///
  /// In en, this message translates to:
  /// **'Add station image'**
  String get stationImage;

  /// No description provided for @addStation.
  ///
  /// In en, this message translates to:
  /// **'Add station'**
  String get addStation;

  /// No description provided for @error.
  ///
  /// In en, this message translates to:
  /// **'Error'**
  String get error;

  /// No description provided for @start.
  ///
  /// In en, this message translates to:
  /// **'Start'**
  String get start;

  /// No description provided for @end.
  ///
  /// In en, this message translates to:
  /// **'End'**
  String get end;

  /// No description provided for @flutterMap.
  ///
  /// In en, this message translates to:
  /// **'Choose location'**
  String get flutterMap;

  /// No description provided for @addressNotFound.
  ///
  /// In en, this message translates to:
  /// **'Address not found.'**
  String get addressNotFound;

  /// No description provided for @noLocationSelected.
  ///
  /// In en, this message translates to:
  /// **'No location selected. Please tap on the map.'**
  String get noLocationSelected;

  /// No description provided for @my.
  ///
  /// In en, this message translates to:
  /// **'My'**
  String get my;

  /// No description provided for @station.
  ///
  /// In en, this message translates to:
  /// **'Station'**
  String get station;

  /// No description provided for @chargingTime.
  ///
  /// In en, this message translates to:
  /// **'Charging time'**
  String get chargingTime;

  /// No description provided for @contactNumber.
  ///
  /// In en, this message translates to:
  /// **'Contact number'**
  String get contactNumber;

  /// No description provided for @hour.
  ///
  /// In en, this message translates to:
  /// **'hour'**
  String get hour;

  /// No description provided for @cost.
  ///
  /// In en, this message translates to:
  /// **'Cost'**
  String get cost;

  /// No description provided for @maxPower.
  ///
  /// In en, this message translates to:
  /// **'Max Power'**
  String get maxPower;

  /// No description provided for @duration.
  ///
  /// In en, this message translates to:
  /// **'Duration'**
  String get duration;

  /// No description provided for @amount.
  ///
  /// In en, this message translates to:
  /// **'Amount'**
  String get amount;

  /// No description provided for @accept.
  ///
  /// In en, this message translates to:
  /// **'Accept'**
  String get accept;

  /// No description provided for @decline.
  ///
  /// In en, this message translates to:
  /// **'Decline'**
  String get decline;

  /// No description provided for @cancel.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get cancel;

  /// No description provided for @canceled.
  ///
  /// In en, this message translates to:
  /// **'Canceled'**
  String get canceled;

  /// No description provided for @finished.
  ///
  /// In en, this message translates to:
  /// **'Finished'**
  String get finished;

  /// No description provided for @pending.
  ///
  /// In en, this message translates to:
  /// **'Pending'**
  String get pending;

  /// No description provided for @unknown.
  ///
  /// In en, this message translates to:
  /// **'Unknown'**
  String get unknown;

  /// No description provided for @leave_review.
  ///
  /// In en, this message translates to:
  /// **'Leave a review'**
  String get leave_review;

  /// No description provided for @rating_bar_title.
  ///
  /// In en, this message translates to:
  /// **'Tap a star to rate'**
  String get rating_bar_title;

  /// No description provided for @submit.
  ///
  /// In en, this message translates to:
  /// **'Submit'**
  String get submit;

  /// No description provided for @review_title.
  ///
  /// In en, this message translates to:
  /// **'Write a review'**
  String get review_title;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['am', 'en'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'am':
      return AppLocalizationsAm();
    case 'en':
      return AppLocalizationsEn();
  }

  throw FlutterError(
      'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
      'an issue with the localizations generation tool. Please file an issue '
      'on GitHub with a reproducible sample app and the gen-l10n configuration '
      'that was used.');
}
