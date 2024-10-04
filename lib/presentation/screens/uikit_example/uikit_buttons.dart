import 'package:flutter/material.dart';
import 'package:watt_hub_uikit/watt_hub_uikit.dart';

class UikitButtons extends StatelessWidget {
  const UikitButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      body: SafeArea(
          child: Column(
            children: [
              const WHOutlinedButton(title: "submit"),
              WHElevatedButton.primary(title: "title"),
              WHIconButton.primary(icon: Icon(Icons.image),),
              WHIconButton.secondary(icon: Icon(Icons.image),),
            ],
          )
     ),
    );
  }
}
