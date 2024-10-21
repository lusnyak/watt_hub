import 'package:flutter/material.dart';
import 'package:watt_hub_localization/watt_hub_localization.dart';

extension LocalizationContext on BuildContext {
  AppLocalizations get localized => AppLocalizations.of(this);
}
