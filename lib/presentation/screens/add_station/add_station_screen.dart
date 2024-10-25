import 'dart:io';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:watt_hub/config/routes/app_router.dart';
import 'package:watt_hub/presentation/screens/add_station/bloc/add_station_bloc.dart';
import 'package:watt_hub/presentation/screens/add_station/widgets/image_picker_upload_button.dart';
import 'package:watt_hub_localization/watt_hub_localization.dart';
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
      child: const AddStationView(),
    );
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
              loaded: (images) {
                final currentImages = images ?? [];
                debugPrint("$currentImages");
                return SingleChildScrollView(
                  child: ConstrainedBox(
                    constraints: BoxConstraints(
                        minHeight: MediaQuery.of(context).size.height),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        WHElevatedButton.secondary(
                          title: AppLocalizations.of(context).chooseAddress,
                        ),
                        Text(AppLocalizations.of(context).timePicker,
                            style: body18SemiBoldTextStyle),
                        // Row(
                        //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        //   children: [
                        //     WHElevatedButton.secondary(title: AppLocalizations.of(context).startTime),
                        //     WHElevatedButton.secondary(title: AppLocalizations.of(context).endTime),
                        //   ],
                        // ),
                        WHTextField.singleLine(
                          controller:  context.read<AddStationBlock>().hourlyRateController,

                          keyboardType: TextInputType.number,
                          label: AppLocalizations.of(context).hourlyRate,
                          hintText: AppLocalizations.of(context).hourlyRate,
                        ),
                        WHTextField.singleLine(
                          controller:  context.read<AddStationBlock>().kilowattController,

                          keyboardType: TextInputType.number,
                          label: AppLocalizations.of(context).kilowatt,
                          hintText: AppLocalizations.of(context).kilowatt,
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
                          label: AppLocalizations.of(context).name,
                          hintText: AppLocalizations.of(context).yourName,
                        ),
                        Text(AppLocalizations.of(context).stationImage,
                            style: body18SemiBoldTextStyle),
                        SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Container(
                                width: MediaQuery.of(context).size.width * 0.9,
                                height: 120.0,
                                child: Row(children: [
                                  if (currentImages.length < 5)
                                    WHImagePicker.multiple(
                                      limit: 5 - currentImages.length,
                                      onPicked: (file) {
                                        context.read<AddStationBlock>().add(
                                            AddStationEvent.imagesSelected(file));
                                      },
                                      child: const ImagePickerUploadButton(),
                                    ),
                                  Expanded(child: _previewImages(context)),
                                ]))),
                        WHElevatedButton.primary(title: AppLocalizations.of(context).addStation,),
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
