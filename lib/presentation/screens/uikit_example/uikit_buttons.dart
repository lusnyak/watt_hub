import 'package:flutter/material.dart';
import 'package:watt_hub_uikit/watt_hub_uikit.dart';

class UikitButtons extends StatelessWidget {
  const UikitButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          const WHOutlinedButton(title: "submit"),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              WHElevatedButton.primary(title: "title"),
              const SizedBox(
                width: 20,
              ),
              WHElevatedButton.secondary(title: "title"),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,

            children: [
              WHIconButton.primary(
                icon: const Icon(Icons.image),
              ),
              const SizedBox(
                width: 20,
              ),
              WHIconButton.secondary(
                icon: const Icon(Icons.image),
              ),
            ],
          )
        ],
      )),
    );
  }
}
