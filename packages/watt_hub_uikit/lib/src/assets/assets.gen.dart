/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsFontsGen {
  const $AssetsFontsGen();

  /// Directory path: assets/fonts/urbanist
  $AssetsFontsUrbanistGen get urbanist => const $AssetsFontsUrbanistGen();
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/onboarding_first_img.png
  AssetGenImage get onboardingFirstImg =>
      const AssetGenImage('assets/images/onboarding_first_img.png');

  /// File path: assets/images/onboarding_second_img.png
  AssetGenImage get onboardingSecondImg =>
      const AssetGenImage('assets/images/onboarding_second_img.png');

  /// File path: assets/images/onboarding_third_img.png
  AssetGenImage get onboardingThirdImg =>
      const AssetGenImage('assets/images/onboarding_third_img.png');

  /// List of all assets
  List<AssetGenImage> get values => [onboardingFirstImg, onboardingSecondImg, onboardingThirdImg];
}

class $AssetsFontsUrbanistGen {
  const $AssetsFontsUrbanistGen();

  /// File path: assets/fonts/urbanist/Urbanist-Black.ttf
  String get urbanistBlack => 'packages/watt_hub_uikit/assets/fonts/urbanist/Urbanist-Black.ttf';

  /// File path: assets/fonts/urbanist/Urbanist-BlackItalic.ttf
  String get urbanistBlackItalic =>
      'packages/watt_hub_uikit/assets/fonts/urbanist/Urbanist-BlackItalic.ttf';

  /// File path: assets/fonts/urbanist/Urbanist-Bold.ttf
  String get urbanistBold => 'packages/watt_hub_uikit/assets/fonts/urbanist/Urbanist-Bold.ttf';

  /// File path: assets/fonts/urbanist/Urbanist-BoldItalic.ttf
  String get urbanistBoldItalic =>
      'packages/watt_hub_uikit/assets/fonts/urbanist/Urbanist-BoldItalic.ttf';

  /// File path: assets/fonts/urbanist/Urbanist-ExtraBold.ttf
  String get urbanistExtraBold =>
      'packages/watt_hub_uikit/assets/fonts/urbanist/Urbanist-ExtraBold.ttf';

  /// File path: assets/fonts/urbanist/Urbanist-ExtraBoldItalic.ttf
  String get urbanistExtraBoldItalic =>
      'packages/watt_hub_uikit/assets/fonts/urbanist/Urbanist-ExtraBoldItalic.ttf';

  /// File path: assets/fonts/urbanist/Urbanist-ExtraLight.ttf
  String get urbanistExtraLight =>
      'packages/watt_hub_uikit/assets/fonts/urbanist/Urbanist-ExtraLight.ttf';

  /// File path: assets/fonts/urbanist/Urbanist-ExtraLightItalic.ttf
  String get urbanistExtraLightItalic =>
      'packages/watt_hub_uikit/assets/fonts/urbanist/Urbanist-ExtraLightItalic.ttf';

  /// File path: assets/fonts/urbanist/Urbanist-Italic.ttf
  String get urbanistItalic => 'packages/watt_hub_uikit/assets/fonts/urbanist/Urbanist-Italic.ttf';

  /// File path: assets/fonts/urbanist/Urbanist-Light.ttf
  String get urbanistLight => 'packages/watt_hub_uikit/assets/fonts/urbanist/Urbanist-Light.ttf';

  /// File path: assets/fonts/urbanist/Urbanist-LightItalic.ttf
  String get urbanistLightItalic =>
      'packages/watt_hub_uikit/assets/fonts/urbanist/Urbanist-LightItalic.ttf';

  /// File path: assets/fonts/urbanist/Urbanist-Medium.ttf
  String get urbanistMedium => 'packages/watt_hub_uikit/assets/fonts/urbanist/Urbanist-Medium.ttf';

  /// File path: assets/fonts/urbanist/Urbanist-MediumItalic.ttf
  String get urbanistMediumItalic =>
      'packages/watt_hub_uikit/assets/fonts/urbanist/Urbanist-MediumItalic.ttf';

  /// File path: assets/fonts/urbanist/Urbanist-Regular.ttf
  String get urbanistRegular =>
      'packages/watt_hub_uikit/assets/fonts/urbanist/Urbanist-Regular.ttf';

  /// File path: assets/fonts/urbanist/Urbanist-SemiBold.ttf
  String get urbanistSemiBold =>
      'packages/watt_hub_uikit/assets/fonts/urbanist/Urbanist-SemiBold.ttf';

  /// File path: assets/fonts/urbanist/Urbanist-SemiBoldItalic.ttf
  String get urbanistSemiBoldItalic =>
      'packages/watt_hub_uikit/assets/fonts/urbanist/Urbanist-SemiBoldItalic.ttf';

  /// File path: assets/fonts/urbanist/Urbanist-Thin.ttf
  String get urbanistThin => 'packages/watt_hub_uikit/assets/fonts/urbanist/Urbanist-Thin.ttf';

  /// File path: assets/fonts/urbanist/Urbanist-ThinItalic.ttf
  String get urbanistThinItalic =>
      'packages/watt_hub_uikit/assets/fonts/urbanist/Urbanist-ThinItalic.ttf';

  /// List of all assets
  List<String> get values => [
        urbanistBlack,
        urbanistBlackItalic,
        urbanistBold,
        urbanistBoldItalic,
        urbanistExtraBold,
        urbanistExtraBoldItalic,
        urbanistExtraLight,
        urbanistExtraLightItalic,
        urbanistItalic,
        urbanistLight,
        urbanistLightItalic,
        urbanistMedium,
        urbanistMediumItalic,
        urbanistRegular,
        urbanistSemiBold,
        urbanistSemiBoldItalic,
        urbanistThin,
        urbanistThinItalic
      ];
}

class WattHubAssets {
  WattHubAssets._();

  static const String package = 'watt_hub_uikit';

  static const $AssetsFontsGen fonts = $AssetsFontsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage {
  const AssetGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
  });

  final String _assetName;

  static const String package = 'watt_hub_uikit';

  final Size? size;
  final Set<String> flavors;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = true,
    bool isAntiAlias = false,
    @Deprecated('Do not specify package for a generated library asset') String? package = package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({
    AssetBundle? bundle,
    @Deprecated('Do not specify package for a generated library asset') String? package = package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => 'packages/watt_hub_uikit/$_assetName';
}
