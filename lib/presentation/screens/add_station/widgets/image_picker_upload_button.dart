import 'package:flutter/material.dart';

class ImagePickerUploadButton extends StatelessWidget {
  const ImagePickerUploadButton({super.key});

  @override
  Widget build(BuildContext context) {

    return  Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey, width: 2),
        borderRadius: BorderRadius.circular(8),
      ),
      height: 85.0,
      width: 85.0,
      child: const Icon(Icons.add),
    );
  }
}
