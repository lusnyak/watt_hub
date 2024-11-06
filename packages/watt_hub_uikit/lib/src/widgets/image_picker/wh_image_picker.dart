import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:watt_hub_uikit/watt_hub_uikit.dart';

class WHImagePicker extends StatelessWidget {
  const WHImagePicker._({
    super.key,
    this.limit = 5,
    required this.child,
    this.onPicked,
    this.onPickedFile,
    this.single = false,
  });

  factory WHImagePicker.multiple({
    Key? key,
    int limit = 5,
    required Widget child,
    ValueChanged<List<File>>? onPicked,
  }) {
    if(limit >1) {
      return WHImagePicker._(
        key: key,
        limit: limit,
        onPicked: onPicked,
        child: child,
      );
    }
    return  WHImagePicker._(
      key: key,
      onPickedFile: (file){
        onPicked?.call([file]);
      },
      single: true,
      child: child,
    );
  }

  factory WHImagePicker.single({
    Key? key,
    required Widget child,
    ValueChanged<File>? onPicked,
  }) {
    return WHImagePicker._(
      key: key,
      onPickedFile: onPicked,
      single: true,
      child: child,
    );
  }

  final int limit;
  final Widget child;
  final ValueChanged<List<File>>? onPicked;
  final ValueChanged<File>? onPickedFile;
  final bool single;

  Future<void> _showPickerOptions(BuildContext context) async {
    await showModalBottomSheet(
      context: context,
      builder: (BuildContext buildContext) {
        return Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text('Choose an option:', style: TextStyle(fontSize: 20)),
              ListTile(
                leading: const Icon(Icons.photo_library),
                title: const Text('Gallery (Multiple)'),
                onTap: () {
                  Navigator.pop(buildContext);
                  if (single) {
                    _pickImage(ImageSource.gallery);
                  } else {
                    _pickImages();
                  }
                },
              ),
              ListTile(
                leading: const Icon(Icons.camera),
                title: const Text('Camera'),
                onTap: () {
                  Navigator.pop(buildContext);
                  if (single) {
                    _pickImage();
                  } else {
                    _openCamera();
                  }
                },
              )
            ],
          ),
        );
      },
    );
  }

  Future<void> _pickImage([ImageSource source = ImageSource.camera]) async {
    await ImagePicker()
        .pickImage(source: source, imageQuality: 50)
        .then((file) {
      if (file == null) return;
      onPickedFile?.call(File(file.path));
    });
  }

  Future<void> _pickImages() async {
    await ImagePicker()
        .pickMultiImage(imageQuality: 50, limit: limit)
        .then((pickedXFiles) {
      final pickedFiles = pickedXFiles.map((file) => File(file.path)).toList();
      onPicked?.call(pickedFiles);
    });
  }

  Future<void> _openCamera() async {
    await ImagePicker()
        .pickImage(source: ImageSource.camera, imageQuality: 50)
        .then((file) {
      if (file == null) return;
      onPicked?.call([File(file.path)]);
    });
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          _showPickerOptions(context);
        },
        child: child);
  }
}
