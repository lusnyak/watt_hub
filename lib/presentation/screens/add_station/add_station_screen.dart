import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:watt_hub/config/routes/app_router.dart';
import 'package:watt_hub_uikit/watt_hub_uikit.dart';

@RoutePage()
class AddStationScreen extends StatelessWidget {
  const AddStationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add Station"),
        centerTitle: true,
        leading: IconButton(
          onPressed: () => AutoRouter.of(context).push(const ProfileRoute()),
          icon: const Icon(Icons.arrow_back),
        ),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            WHElevatedButton.secondary(title: "Choose an address"),
            Text("Time Picker", style: body16SemiBoldTextStyle),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                WHElevatedButton.primary(title: "Start time"),
                WHElevatedButton.primary(title: "End Time")
              ],
            ),
            WHTextField.singleLine(
                label: "Hourly rate", hintText: "Hourly rate"),
            WHTextField.singleLine(label: "Kilowatt", hintText: "Kilowatt"),

            Text("Contact info", style: body16SemiBoldTextStyle),

            // WhDropDownButton(items: items, itemLabel: itemLabel)
          ],
        ),
      ).paddingAll(20.0),
    );
  }
}
