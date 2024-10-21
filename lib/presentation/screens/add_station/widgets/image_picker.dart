import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<XFile>? _imageFileList;
  dynamic _pickImageError;
  static const int maxImages = 5;
  final ImagePicker _picker = ImagePicker();

  Widget _previewImages() {
    if (_imageFileList != null && _imageFileList!.isNotEmpty) {
      return Container(
        height: 100,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: _imageFileList!.length,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Stack(
                alignment: Alignment.topRight,
                children: [
                  Image.file(
                    File(_imageFileList![index].path),
                    fit: BoxFit.cover,
                    height: 100,
                    width: 100,
                  ),
                  IconButton(
                    icon: Icon(Icons.delete, color: Colors.red),
                    onPressed: () {
                      _removeImage(index);
                    },
                  ),
                ],
              ),
            );
          },
        ),
      );
    } else if (_pickImageError != null) {
      return Text('Pick image error: $_pickImageError');
    }
    return const Text('No images selected.');
  }

  void _removeImage(int index) {
    setState(() {
      _imageFileList!.removeAt(index);
    });
  }

  Future<void> _pickImages() async {
    final storageStatus = await Permission.storage.request();

    if (storageStatus.isGranted) {
      try {
        final List<XFile>? pickedFileList = await _picker.pickMultiImage();
        if (pickedFileList != null) {
          setState(() {
            _imageFileList ??= [];
            for (var file in pickedFileList) {
              if (_imageFileList!.length < maxImages) {
                _imageFileList!.add(file);
              } else {
                break;
              }
            }
          });
        }
      } catch (e) {
        setState(() {
          _pickImageError = e;
        });
      }
    } else {
      setState(() {
        _pickImageError = 'Storage permission denied';
      });
    }
  }

  void _showPickerOptions(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Choose an option:', style: TextStyle(fontSize: 20)),
              ListTile(
                leading: Icon(Icons.photo_library),
                title: Text('Gallery (Multiple)'),
                onTap: () {
                  Navigator.pop(context);
                  _pickImages();
                },
              ),
              ListTile(
                leading: Icon(Icons.camera),
                title: Text('Camera (Single)'),
                onTap: () {
                  Navigator.pop(context);
                  _pickImage(ImageSource.camera);
                },
              )
            ],
          ),
        );
      },
    );
  }

  Future<void> _pickImage(ImageSource source) async {
    final cameraStatus = await Permission.camera.request();

    if (cameraStatus.isGranted) {
      try {
        final XFile? pickedFile = await _picker.pickImage(source: source);
        if (pickedFile != null) {
          setState(() {
            _imageFileList ??= [];
            if (_imageFileList!.length < maxImages) {
              _imageFileList!.add(pickedFile);
            }
          });
        }
      } catch (e) {
        setState(() {
          _pickImageError = e;
        });
      }
    } else {
      setState(() {
        _pickImageError = 'Camera permission denied';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _previewImages(),
        // Show button only if the image count is less than maxImages
        if (_imageFileList == null || _imageFileList!.length < maxImages)
          ElevatedButton(
            onPressed: () {
              _showPickerOptions(context);
            },
            child: Text("Pick Image"),
          ),
      ],
    );
  }
}
