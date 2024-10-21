import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:watt_hub/config/routes/app_router.dart';
import 'package:watt_hub/presentation/screens/add_station/block/add_station_bloc.dart';
import 'package:watt_hub/presentation/screens/add_station/widgets/image_picker.dart';
import 'package:watt_hub_uikit/watt_hub_uikit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../config/locator/service_locator.dart';

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

        child: BlocBuilder<AddStationBlock, AddStationState>(
          builder: (context, state) {
            return state.when(
              initial: () => Container(),
              loading: () => const Center(child: CircularProgressIndicator()),
              error: (message) => Center(child: Text('Error: $message')),
              loaded: () {
                return SingleChildScrollView(
                  child: ConstrainedBox(
                    constraints: BoxConstraints(minHeight: MediaQuery.of(context).size.height),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        WHElevatedButton.secondary(title: "Choose an address"),
                        Text("Time picker", style: body18SemiBoldTextStyle),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            WHElevatedButton.secondary(title: "Start time"),
                            WHElevatedButton.secondary(title: "End time"),
                          ],
                        ),
                        WHTextField.singleLine(
                          controller:  context.read<AddStationBlock>().hourlyRateController,
                          keyboardType: TextInputType.number,
                          label: "Hourly rate",
                          hintText: "Hourly rate",
                        ),
                        WHTextField.singleLine(
                          controller:  context.read<AddStationBlock>().kilowattController,
                          keyboardType: TextInputType.number,
                          label: "Kilowatt",
                          hintText: "Kilowatt ",
                        ),
                        Text("Contact info", style: body18SemiBoldTextStyle),
                        WHTextField.singleLine(
                          controller:  context.read<AddStationBlock>().phoneController,
                          keyboardType: TextInputType.phone,
                          label: "Phone",
                          hintText: "Enter your phone number",
                        ),
                        WHTextField.singleLine(
                          controller:  context.read<AddStationBlock>().nameController,
                          keyboardType: TextInputType.name,
                          label: "Name",
                          hintText: "Enter your name ",
                        ),
                        Text("Add station image", style: body18SemiBoldTextStyle),
                         const MyHomePage(),
                        WHElevatedButton.primary(title: "Add station"),
                      ],
                    ),
                  ),
                );
              },
            );
          },
        ),
      ).paddingAll(20.0),
    );
  }
}



