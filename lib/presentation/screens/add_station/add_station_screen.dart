import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:watt_hub/config/routes/app_router.dart';
import 'package:watt_hub_uikit/watt_hub_uikit.dart';

@RoutePage()
class AddStationScreen extends StatelessWidget {
  const AddStationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (_) =>
            getIt<AddStationBlock>()..add(const AddStationEvent.started()),
        child: const AddStationView());
  }
}
class AddStationView extends StatelessWidget {
  const AddStationView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) =>
          getIt<AddStationBlock>()..add(const AddStationEvent.started()),
      child: const AddStationView(),
    );
  }
}

class AddStationView extends StatelessWidget {
  const AddStationView({super.key});

  Widget _previewImages(BuildContext context) {
    final state = context.watch<AddStationBlock>().state;
    return state.maybeWhen(
      loaded: (images) {
        if (images != null && images.isNotEmpty) {
          return Container(
            height: 100,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: images.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Stack(
                    children: [
                      Image.file(
                        File(images[index].path),
                        fit: BoxFit.cover,
                        height: 100,
                        width: 85,
                      ),
                      Positioned(
                        top: -20,
                        right: -20,
                        child: IconButton(
                          icon: const Icon(Icons.dangerous_outlined,
                              color: WattHubColors.primaryGreenColor),
                          onPressed: () => context
                              .read<AddStationBlock>()
                              .add(AddStationEvent.removeImage(index)),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          );
        }
        return const Text('No images selected.');
      },
      orElse: () => const Text('No images selected.'),
    );
  }

  @override
  Widget build(BuildContext context) {
    TimeOfDay time = const TimeOfDay(hour: 18, minute: 00);
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Station", style: body18SemiBoldTextStyle),
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



