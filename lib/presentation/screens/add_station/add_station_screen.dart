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
              children: [
                WHElevatedButton.primary(title: "Start time"),
                WHElevatedButton.primary(title: "End Time")
              ],
            ),
            20.h.heightBox,
            ElevatedButton(
                onPressed: () => AutoRouter.of(context)
                    .push(const ChooseStationAddressRoute()),
                child: const Text(
                  "Choose Station Address",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.blue,
                  ),
                ))
          ],
        ),
      ).paddingAll(20.0),
    );
  }
}
