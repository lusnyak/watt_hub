import 'package:flutter/material.dart';
import 'package:watt_hub_uikit/watt_hub_uikit.dart';

class UikitPopup extends StatelessWidget {
  const UikitPopup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          ElevatedButton(
            onPressed: () => showDialog<void>(
                context: context,
                builder: (BuildContext context) {
                  return WHPopup(
                    image: WattHubAssets.images.popupLocationImg.keyName,
                    title: "Enable Location",
                    subTitle:
                        "We need access to you location to find EV charging station around you.",
                  );
                }),
            child: const Text("data"),
          ),
        ],
      )),
    );
  }
}
