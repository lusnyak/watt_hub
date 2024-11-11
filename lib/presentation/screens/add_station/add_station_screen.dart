import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:watt_hub/config/routes/app_router.dart';
import 'package:watt_hub/presentation/screens/add_station/bloc/add_station_bloc.dart';
import 'package:watt_hub/presentation/screens/add_station/widgets/add_station_preview_images.dart';
import 'package:watt_hub/presentation/screens/add_station/widgets/image_picker_upload_button.dart';
import 'package:watt_hub/utils/extensions/extensions.dart';
import 'package:watt_hub_uikit/watt_hub_uikit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../config/locator/service_locator.dart';
import '../../../utils/helpers/time_helper_format.dart';

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
    TimeOfDay time = const TimeOfDay(hour: 18, minute: 00);
    return Scaffold(
      appBar: AppBar(
        title:
            Text(context.localized.addStation, style: body18SemiBoldTextStyle),
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
              loading: () => const Center(child: WHCircularSpin()),
              error: (message) =>
                  Center(child: Text('${context.localized.error}: $message')),
              loaded: (
                connectors,
                selectedConnectors,
                selectedList,
                selected,
                initialSelectedConnectorId,
                images,
                startTime,
                endTime,
                address,
                latitude,
                longitude,
              ) {
                final currentImages = images ?? [];
                return SingleChildScrollView(
                  child: Form(
                    key: context.read<AddStationBlock>().formkey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        WHElevatedButton.secondary(
                            title: context.localized.chooseAddress,
                            onPressed: () async {
                              final addressResult = await context.router
                                  .push<Map<String, dynamic>>(
                                const ChooseStationAddressRoute(),
                              );

                              if (addressResult != null) {
                                final address = addressResult['address'];
                                final latitude = addressResult['latitude'];
                                final longitude = addressResult['longitude'];
                                context.read<AddStationBlock>().add(
                                      AddStationEvent.getAddress(
                                          address, latitude, longitude),
                                    );
                              }
                            }),
                        5.h.heightBox,
                        Text(address ?? "", style: body14MediumTextStyle),
                        20.h.heightBox,
                        Text(context.localized.timePicker,
                            style: body18SemiBoldTextStyle),
                        5.h.heightBox,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                                child: WHOutlinedButton(
                              onPressed: () {
                                WhDatePicker.of(context)
                                    .showTimePicker(initialTime: time)
                                    .then(
                                  (newDate) {
                                    if (newDate != null) {
                                      final formattedTime =
                                          dateTimeFromTimeOfDay(newDate);
                                      context.read<AddStationBlock>().add(
                                          AddStationEvent.startTimeSelected(
                                              formattedTime));
                                    }
                                  },
                                );
                              },
                              title: startTime != null
                                  ? formatDateTime(startTime)
                                  : context.localized.start,
                            )),
                            20.w.widthBox,
                            WHOutlinedButton(
                              onPressed: () {
                                WhDatePicker.of(context)
                                    .showTimePicker(initialTime: time)
                                    .then(
                                  (newDate) {
                                    if (newDate != null) {
                                      final formattedTime =
                                          dateTimeFromTimeOfDay(newDate);
                                      context.read<AddStationBlock>().add(
                                          AddStationEvent.endTimeSelected(
                                              formattedTime));
                                    }
                                  },
                                );
                              },
                              title: endTime != null
                                  ? formatDateTime(endTime)
                                  : context.localized.start,
                            ).expanded(),
                          ],
                        ),
                        10.h.heightBox,
                        WhMultiSelectDropDownButton(
                          onTab: (item) {
                            context.read<AddStationBlock>().add(
                                  AddStationEvent
                                      .connectorMultiTypeChangedEvent(item),
                                );
                          },
                          items: connectors,
                          hintText: context.localized.chooseConnector,
                          itemLabel: (connector) => connector.title!,
                          selectedItems: selectedList,
                        ),
                        Wrap(
                          spacing: 8.0,
                          runSpacing: 4.0,
                          children: [
                            if (selectedList != [])
                              for (var item in selectedList)
                                Chip(
                                  onDeleted: () {
                                    context.read<AddStationBlock>().add(
                                          AddStationEvent
                                              .deleteSelectedConnector(
                                                  connector: item),
                                        );
                                  },
                                  deleteIcon:
                                      const Icon(Icons.dangerous_outlined),
                                  label: Text(item.title ?? ""),
                                  backgroundColor: Colors.blueAccent,
                                ),
                          ],
                        ),
                        WHTextField.singleLine(
                          controller: context
                              .read<AddStationBlock>()
                              .hourlyRateController,
                          keyboardType: TextInputType.number,
                          label: context.localized.hourlyRate,
                          hintText: context.localized.hourlyRate,
                        ),
                        WHTextField.singleLine(
                          controller: context
                              .read<AddStationBlock>()
                              .kilowattController,
                          keyboardType: TextInputType.number,
                          label: context.localized.kilowatt,
                          hintText: context.localized.kilowatt,
                        ),
                        20.h.heightBox,
                        Text(context.localized.contactInfo,
                            style: body18SemiBoldTextStyle),
                        WHTextField.singleLine(
                          controller:
                              context.read<AddStationBlock>().phoneController,
                          keyboardType: TextInputType.phone,
                          label: context.localized.phone,
                          hintText: context.localized.yourPhoneNumber,
                        ),
                        WHTextField.singleLine(
                          controller:
                              context.read<AddStationBlock>().nameController,
                          keyboardType: TextInputType.name,
                          label: context.localized.name,
                          hintText: context.localized.yourName,
                        ),
                        20.h.heightBox,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(context.localized.stationImage,
                                style: body18SemiBoldTextStyle),
                            if (currentImages.length < 5)
                              WHImagePicker.multiple(
                                limit: 5 - currentImages.length,
                                onPicked: (file) {
                                  context.read<AddStationBlock>().add(
                                      AddStationEvent.imagesSelected(file));
                                },
                                child: const ImagePickerUploadButton(),
                              ),
                          ],
                        ),
                        if (currentImages.isNotEmpty)
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: SizedBox(
                              width: MediaQuery.of(context).size.width * 0.9,
                              height: 120.h,
                              child: const Row(
                                children: [
                                  Expanded(child: AddStationPreviewImages()),
                                ],
                              ),
                            ),
                          ),
                        20.h.heightBox,
                        WHElevatedButton.primary(
                          onPressed: () {
                            context
                                .read<AddStationBlock>()
                                .add(const AddStationEvent.createStation());
                          },
                          title: context.localized.addStation,
                        ),
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