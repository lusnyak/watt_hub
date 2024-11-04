import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:watt_hub/config/routes/app_router.dart';
import 'package:watt_hub/presentation/screens/add_station/bloc/add_station_bloc.dart';
import 'package:watt_hub/presentation/screens/add_station/widgets/add_station_preview_images.dart';
import 'package:watt_hub/presentation/screens/add_station/widgets/image_picker_upload_button.dart';
import 'package:watt_hub/utils/extensions/extensions.dart';
import 'package:watt_hub_localization/watt_hub_localization.dart';
import 'package:watt_hub_uikit/watt_hub_uikit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../config/locator/service_locator.dart';
import '../../../utils/helpers/data_helper.dart';
import '../../../utils/helpers/time_helper_format.dart';

@RoutePage()
class AddStationScreen extends StatelessWidget {
  const AddStationScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context).addStation,
            style: body18SemiBoldTextStyle),
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
              loaded: (connectors, initialSelectedConnectorId, images,
                  startTime, endTime, address) {
                final currentImages = images ?? [];
                final initialSelectedConnector = findById(connectors,
                    initialSelectedConnectorId, (connector) => connector.id);
                return SingleChildScrollView(
                  child: Form(
                    key: context.read<AddStationBlock>().formkey,
                    child: ConstrainedBox(
                      constraints: BoxConstraints(
                          minHeight: MediaQuery.of(context).size.height),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          WHElevatedButton.secondary(
                            title: AppLocalizations.of(context).chooseAddress,
                            onPressed: () async {
                              final address = await context.router.push<String>(
                                  const ChooseStationAddressRoute());
                              if (address != null) {
                                context
                                    .read<AddStationBlock>()
                                    .add(AddStationEvent.getAddress(address));
                                debugPrint("Selected address: $address");
                              } else {
                                debugPrint("No address selected.");
                              }
                            },
                          ),
                          SizedBox(
                            height: 5.h,
                          ),
                          Text(address ?? "", style: body14MediumTextStyle),
                          SizedBox(
                            height: 20.h,
                          ),
                          Text(AppLocalizations.of(context).timePicker,
                              style: body18SemiBoldTextStyle),
                          SizedBox(
                            height: 5.h,
                          ),
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
                                                formatTimeOfDay(newDate);
                                            context.read<AddStationBlock>().add(
                                                AddStationEvent
                                                    .startTimeSelected(
                                                        formattedTime));
                                          }
                                        },
                                      );
                                    },
                                    title:
                                        "${context.localized.start} - ${startTime ?? ""}"),
                              ),
                              SizedBox(
                                width: 20.w,
                              ),
                              Expanded(
                                child: WHOutlinedButton(
                                    onPressed: () {
                                      WhDatePicker.of(context)
                                          .showTimePicker(initialTime: time)
                                          .then(
                                        (newDate) {
                                          if (newDate != null) {
                                            final formattedTime =
                                                formatTimeOfDay(newDate);
                                            context.read<AddStationBlock>().add(
                                                AddStationEvent.endTimeSelected(
                                                    formattedTime));
                                          }
                                        },
                                      );
                                    },
                                    title:
                                        "${context.localized.end}-  ${endTime ?? ""}"),
                              ),
                            ],
                          ),
                          SizedBox(height: 10.h),
                          WhDropDownButton(
                            items: connectors,
                            itemLabel: (connector) => connector.title,
                            onChanged: (value) {
                              if (value != null) {
                                context.read<AddStationBlock>().add(
                                    AddStationEvent.connectorTypeChangedEvent(
                                        value));
                              }
                            },
                            hintText: context.localized.chooseConnector,
                            value: initialSelectedConnector,
                          ),
                          WHTextField.singleLine(
                            controller: context
                                .read<AddStationBlock>()
                                .hourlyRateController,
                            keyboardType: TextInputType.number,
                            label: AppLocalizations.of(context).hourlyRate,
                            hintText: AppLocalizations.of(context).hourlyRate,
                          ),
                          WHTextField.singleLine(
                            controller: context
                                .read<AddStationBlock>()
                                .kilowattController,
                            keyboardType: TextInputType.number,
                            label: AppLocalizations.of(context).kilowatt,
                            hintText: AppLocalizations.of(context).kilowatt,
                          ),
                          SizedBox(
                            height: 20.h,
                          ),
                          Text(AppLocalizations.of(context).contactInfo,
                              style: body18SemiBoldTextStyle),
                          WHTextField.singleLine(
                            controller:
                                context.read<AddStationBlock>().phoneController,
                            keyboardType: TextInputType.phone,
                            label: AppLocalizations.of(context).phone,
                            hintText:
                                AppLocalizations.of(context).yourPhoneNumber,
                          ),
                          WHTextField.singleLine(
                            controller:
                                context.read<AddStationBlock>().nameController,
                            keyboardType: TextInputType.name,
                            label: AppLocalizations.of(context).name,
                            hintText: AppLocalizations.of(context).yourName,
                          ),
                          SizedBox(
                            height: 20.h,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(AppLocalizations.of(context).stationImage,
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
                          SizedBox(
                            height: 20.h,
                          ),
                          WHElevatedButton.primary(
                            title: AppLocalizations.of(context).addStation,
                          ),
                        ],
                      ),
                    ),
                  ),
                ))
          ],
        ),
      ).paddingAll(20.0),
    );
  }
}
