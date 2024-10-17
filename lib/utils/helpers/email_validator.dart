// Method to validate email
import 'package:flutter/cupertino.dart';
import 'package:watt_hub_localization/watt_hub_localization.dart';

String? validateEmail(String? value, BuildContext context) {
  if (value == null || value.isEmpty) {
    return AppLocalizations.of(context).pleaseEnterEmail;
  }
  if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
    return AppLocalizations.of(context).pleaseEnterAValidEmail;
  }
  return null;
}
