# watt_hub

## Generate codes

dart pub global activate fvm

fvm flutter pub run build_runner build --delete-conflicting-outputs
fvm flutter packages pub run build_runner build --delete-conflicting-outputs

## WattHub UIKit codes generates commands:
cd packages/watt_hub_uikit && fvm flutter pub get && fvm flutter packages pub run build_runner build --delete-conflicting-outputs

## WattHub localizations codes generates commands:
cd packages/watt_hub_localization && fvm flutter pub get && fvm flutter gen-l10n

## WattHub splash screen generate command:
fvm flutter pub get && fvm flutter pub run flutter_launcher_icons
fvm flutter pub get && fvm flutter pub run flutter_native_splash:create