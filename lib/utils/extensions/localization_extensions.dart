import 'package:flutter/widgets.dart';
import 'package:watt_hub_localization/watt_hub_localization.dart';

extension LocalizationContext on BuildContext {
  AppLocalizations get localized {
    return AppLocalizations.of(this);
  }
}
