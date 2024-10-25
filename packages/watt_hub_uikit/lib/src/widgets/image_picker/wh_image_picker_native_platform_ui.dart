import 'package:watt_hub_uikit/watt_hub_uikit.dart';

void supportImagePickerPlatformOptions(){
  final ImagePickerPlatform imagePickerImplementation =
      ImagePickerPlatform.instance;
  if (imagePickerImplementation is ImagePickerAndroid) {
    imagePickerImplementation.useAndroidPhotoPicker = true;
  }
}