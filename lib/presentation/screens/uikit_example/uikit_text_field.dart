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
  final _formKey = GlobalKey<FormState>();

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
          onCompleted: (pin) {
            debugPrint("onCompleted");
            debugPrint(pin);
          },
          onChanged: (value) => debugPrint(value),
        ),
        80.heightBox,
        Form(
          key: _formKey,
          child: Column(
            children: [
              WHTextField.singleLine(
                label: 'Email',
                hintText: 'Email',
                controller: myController,
                onChanged: (value) => debugPrint(value),
                keyboardType: TextInputType.emailAddress,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter email';
                  }
                  if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
                    return 'Please enter a valid email';
                  }
                  return null;
                },
              ),
              40.heightBox,
              WHTextField.multiLine(
                label: 'Comment',
                hintText: 'Comment',
                maxLines: 5,
                controller: commentController,
                onChanged: (value) => debugPrint(value),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter comment';
                  }
                  return null;
                },
              ),
            ],
          ),
        ),
        40.heightBox,
        ElevatedButton(
          onPressed: () {
            if (_formKey.currentState!.validate()) {
              debugPrint('Form is valid');
            }
          },
          child: const Text('Submit'),
        ),
      ],
    );
  }
}
