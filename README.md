# watt_hub

## Generate codes

fvm flutter pub run build_runner build --delete-conflicting-outputs
fvm flutter packages pub run build_runner build --delete-conflicting-outputs

## WattHub UIKit codes generates commands:
cd packages/watt_hub_uikit && fvm flutter pub get && fvm flutter packages pub run build_runner build --delete-conflicting-outputs

## WattHub localizations codes generates commands:
cd packages/watt_hub_localization && fvm flutter pub get && fvm flutter gen-l10n

 