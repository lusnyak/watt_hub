import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:watt_hub/config/routes/app_router.dart';
import 'package:watt_hub/domain/models/connector_type/connector_type_model.dart';
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
    final bloc = context.read<AddStationBlock>();
    TimeOfDay time = const TimeOfDay(hour: 18, minute: 00);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          context.localized.addStation,
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: BlocConsumer<AddStationBlock, AddStationState>(
          listener: (context, state) {
            if (state is ErrorState) {
              context.showSnackBar(message: state.message);
            }
            // state.maybeWhen(
            //     orElse: () {},
            //     error: (message) {
            //       context.showSnackBar(message: message);
            //     });
          },
          builder: (context, state) {
            return state.maybeWhen(
                orElse: () => nil,
                loading: () => const Center(child: WHCircularSpin()),
                // error: (message) =>
                //     Center(child: Text('${context.localized.error}: $message')),
                loaded: (connectors,
                    selectedConnectors,
                    selectedList,
                    selected,
                    initialSelectedConnectorId,
                    images,
                    startTime,
                    endTime,
                    address,
                    latitude,
                    longitude,) {
                  final currentImages = images ?? [];
                  return SingleChildScrollView(
                    padding: EdgeInsets.all(20.r),
                    child: Form(
                      key: bloc.formkey,
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

                                /// TODO: Vlad - poxel objecti
                                if (addressResult != null) {
                                  final address = addressResult['address'];
                                  final latitude = addressResult['latitude'];
                                  final longitude = addressResult['longitude'];
                                  if (context.mounted) {
                                    bloc.add(
                                      AddStationEvent.getAddress(
                                          address, latitude, longitude),
                                    );
                                  }
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
                                        if (context.mounted) {
                                          bloc.add(
                                              AddStationEvent.startTimeSelected(
                                                  formattedTime));
                                        }
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
                                onPressed: () async {
                                  await WhDatePicker.of(context)
                                      .showTimePicker(initialTime: time)
                                      .then(
                                    (newDate) {
                                      if (newDate != null) {
                                        final formattedTime =
                                            dateTimeFromTimeOfDay(newDate);
                                        if (context.mounted) {
                                          bloc.add(
                                              AddStationEvent.endTimeSelected(
                                                  formattedTime));
                                        }
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
                          connectorTypes(context,
                              connectors: connectors,
                              selectedList: selectedList),
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
                            controller: bloc.phoneController,
                            keyboardType: TextInputType.phone,
                            label: context.localized.phone,
                            hintText: context.localized.yourPhoneNumber,
                          ),
                          WHTextField.singleLine(
                            controller: bloc.nameController,
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
                                    bloc.add(
                                        AddStationEvent.imagesSelected(file));
                                  },
                                  child: const ImagePickerUploadButton(),
                                ),
                            ],
                          ),
                          if (currentImages.isNotEmpty)
                            const AddStationPreviewImages()
                                .paddingSymmetric(vertical: 6.h),
                          20.h.heightBox,
                          WHElevatedButton.primary(
                            loading: false,
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
                });
          },
        ),
      ),
    );
  }

  Widget connectorTypes(
    BuildContext context, {
    required List<ConnectorTypeModel> connectors,
    required List<ConnectorTypeModel> selectedList,
  }) {
    final bloc = context.read<AddStationBlock>();
    return Column(
      children: [
        WhMultiSelectDropDownButton<ConnectorTypeModel>(
          onTab: (item) {
            bloc.add(
              AddStationEvent.connectorMultiTypeChangedEvent(item),
            );
          },
          items: connectors,
          hintText: context.localized.chooseConnector,
          itemLabel: (connector) => connector.title!,
          selectedItems: selectedList,
        ),
        Wrap(
          spacing: 8.w,
          runSpacing: 0.w,
          children: selectedList
              .map(
                (item) => WHChip(
                  label: item.title,
                  onDeleted: () {
                    bloc.add(
                      AddStationEvent.deleteSelectedConnector(connector: item),
                    );
                  },
                ),
              )
              .toList(),
        ),
      ],
    );
  }
}
