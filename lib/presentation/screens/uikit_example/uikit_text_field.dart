import 'package:flutter/material.dart';
import 'package:watt_hub_uikit/watt_hub_uikit.dart';

class UikitTextField extends StatefulWidget {
  const UikitTextField({super.key});

  @override
  State<UikitTextField> createState() => _UikitTextFieldState();
}

class _UikitTextFieldState extends State<UikitTextField> {
  final myController = TextEditingController();
  final commentController = TextEditingController();

  @override
  void dispose() {
    myController.dispose();
    commentController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        WHPinPut(
          onCompleted: (pin) => debugPrint(pin),
          onChanged: (value) => debugPrint(value),
        ),
        80.heightBox,
        WHTextField.singleLine(
          label: 'Email',
          hintText: 'Email',
          controller: myController,
          onChanged: (value) => debugPrint(value),
        ),
        40.heightBox,
        WHTextField.multiLine(
          label: 'Comment',
          hintText: 'Comment',
          maxLines: 5,
          controller: commentController,
          onChanged: (value) => debugPrint(value),
        ),
      ],
    );
  }
}
