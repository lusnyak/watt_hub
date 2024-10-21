import 'package:flutter/material.dart';
import 'package:watt_hub_uikit/watt_hub_uikit.dart';

class UikitPopup extends StatefulWidget {
  const UikitPopup({super.key});

  @override
  State<UikitPopup> createState() => _UikitPopupState();
}

class _UikitPopupState extends State<UikitPopup> {
  String title = "Enable Location";

  String subTitle =
      "We need access to you location to find EV charging station around you.";

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
                    title: title,
                    subTitle: subTitle,
                  );
                }),
            child: const Text("loading"),
          ),
          ElevatedButton(
            onPressed: () => showDialog<void>(
                context: context,
                builder: (BuildContext context) {
                  return WHPopup(
                    image: WattHubAssets.images.popupLocationImg.keyName,
                    title: "Location",
                    subTitle: subTitle,
                    cancelButtonTitle: "cansle",
                    confirmButtonTitle: "save",
                  );
                }),
            child: const Text("primary"),
          ),
          ElevatedButton(
            onPressed: () => showDialog<void>(
                context: context,
                builder: (BuildContext context) {
                  return WHPopup(
                    image: WattHubAssets.images.popupSuccessfulImg.keyName,
                    title: title,
                    subTitle: subTitle,
                    confirmButtonTitle: "ok",
                  );
                }),
            child: const Text("confirm"),
          ),
        ],
      )),
    );
  }
}
/*
                      */
