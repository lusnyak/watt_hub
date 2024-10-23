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
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ElevatedButton(
            onPressed: () {
              WHPopup.of(context).showWithLoading(
                image: Image.asset(
                    WattHubAssets.images.popupSuccessfulImg.keyName),
                title: "Verification Successful!",
                subTitle:
                    "Please wait...\nYou will be directed to the homepage.",
              );
            },
            child: const Text("Loading"),
          ),
          ElevatedButton(
            onPressed: () {
              WHPopup.of(context).showWithButtons(
                image:
                    Image.asset(WattHubAssets.images.popupLocationImg.keyName),
                title: title,
                subTitle: subTitle,
                cancelButtonTitle: "Cancel",
                confirmButtonTitle: "Enable Location",
                onConfirmPressed: () {
                  Navigator.pop(context);
                },
                onCancelPressed: () {
                  Navigator.pop(context);
                },
              );
            },
            child: const Text("Show With Buttons"),
          ),
          ElevatedButton(
            onPressed: () {
              WHPopup.of(context).showWithConfirm(
                image: Image.asset(
                    WattHubAssets.images.popupSuccessfulImg.keyName),
                title: "Booking Successful!",
                subTitle:
                    "You can view booking details on the \n\t\t My Booking menu.",
                confirmButtonTitle: "Ok",
                onConfirmPressed: () {
                  Navigator.pop(context);
                },
              );
            },
            child: const Text("Show With Confirm"),
          ),
          ElevatedButton(
            onPressed: () {
              WHPopup.of(context).show(
                title: "Booking Successful!",
                subTitle:
                    "You can view booking details on the \n\t\t My Booking menu.",
              );
            },
            child: const Text("Show"),
          ),
        ],
      )),
    );
  }
}
