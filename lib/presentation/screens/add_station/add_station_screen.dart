import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:watt_hub/config/locator/service_locator.dart';
import 'package:watt_hub/config/routes/app_router.dart';
import 'package:watt_hub/domain/models/choose_station_address/choose_station_address_model.dart';
import 'package:watt_hub/domain/models/connector_type/connector_type_model.dart';
import 'package:watt_hub/presentation/screens/add_station/bloc/add_station_bloc.dart';
import 'package:watt_hub/presentation/screens/add_station/view_model/add_station_view_model.dart';
import 'package:watt_hub/presentation/screens/add_station/widgets/add_station_preview_images.dart';
import 'package:watt_hub/presentation/screens/add_station/widgets/image_picker_upload_button.dart';
import 'package:watt_hub/utils/extensions/extensions.dart';
import 'package:watt_hub/utils/helpers/time_helper_format.dart';
import 'package:watt_hub_uikit/watt_hub_uikit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
    return Scaffold(
      appBar: AppBar(
        title: Text(context.localized.addStation),
        centerTitle: true,
      ),
      body: SafeArea(
        child: BlocConsumer<AddStationBlock, AddStationState>(
          listener: (listenerContext, state) {
            state.maybeWhen(
              orElse: () {},
              error: (message) {
                if (state is ErrorState) {
                  context.showSnackBar(message: state.message);
                }
              },
              loaded: (
                  AddStationViewModel? stationData
                  ) {
                if (stationData!.createStation != null) {
                  WHPopup.of(listenerContext).showWithConfirm(
                      title: "The station was successfully created.",
                      subTitle: "Congratulations",
                      confirmButtonTitle: "Confirm",
                      onConfirmPressed: () {
                        context.router.maybePop();
                      });
                }
              },
            );
          },
          builder: (context, state) {
            final viewModel = state.maybeWhen(
              loaded: (stationData) {
                return AddStationViewModel(
                  connectors: stationData?.connectors ?? [],
                  selectedConnector: stationData?.selectedConnector,
                  selectedList: stationData?.selectedList ?? [],
                  images: stationData?.images,
                  startTime: stationData?.startTime,
                  endTime: stationData?.endTime,
                  address: stationData?.address,
                  latitude: stationData?.latitude,
                  longitude: stationData?.longitude,
                );
              },
              orElse: () => AddStationViewModel(
                connectors: [],
                selectedConnector: null,
                selectedList: [],
                images: null,
                startTime: null,
                endTime: null,
                address: null,
                latitude: null,
                longitude: null,
              ),
            );
            return SingleChildScrollView(
              padding: EdgeInsets.all(20.r),
              child: Form(
                key: bloc.formkey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    chooseAddressSection(context),
                    SizedBox(height: 5.h),
                    Text(viewModel.address ?? "", style: body14MediumTextStyle),
                    SizedBox(height: 20.h),
                    Text(context.localized.timePicker, style: body18SemiBoldTextStyle),
                    SizedBox(height: 5.h),
                    datePicker(context, startTime: viewModel.startTime, endTime: viewModel.endTime,),
                    SizedBox(height: 10.h),
                    connectorTypes(context, connectors: viewModel.connectors ?? [], selectedList: viewModel.selectedList),
                    kilowattHourlyRate(context),
                    SizedBox(height: 20.h),
                    contactInfo(context),
                    SizedBox(height: 20.h),
                    imageSection(context, viewModel),
                    if (viewModel.images?.isNotEmpty ?? false)
                       AddStationPreviewImages( images: viewModel.images,).paddingSymmetric(vertical: 6.h),
                    SizedBox(height: 20.h),
                    WHElevatedButton.primary(
                      loading: false,
                      onPressed: () {
                        bloc.add(const AddStationEvent.createStation());
                      },
                      title: context.localized.addStation,
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }

Widget chooseAddressSection (BuildContext context){
  final bloc = context.read<AddStationBlock>();
  return WHElevatedButton.secondary(
      title: context.localized.chooseAddress,
      onPressed: () async {
        final addressResult = await context.router.push<Map<String, dynamic>>(
          const ChooseStationAddressRoute(),
        );
        if (addressResult != null) {
          final getAddressData = ChooseStationAddressModel.fromJson(addressResult);
          bloc.add(AddStationEvent.getAddress(
            getAddressData.address,
            getAddressData.latitude,
            getAddressData.longitude,
          ));
        }
      },
    );
}

  Widget imageSection (BuildContext context ,viewModel) {
    final currentImages = viewModel.images ?? [];
    final bloc = context.read<AddStationBlock>();
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(context.localized.stationImage, style: body18SemiBoldTextStyle),
        if (currentImages.length  < 5)
          WHImagePicker.multiple(
            limit: 5 - (viewModel.images?.length ?? 0) as int,
            onPicked: (file) {
              bloc.add(AddStationEvent.imagesSelected(file));
            },
            child: const ImagePickerUploadButton(),
          ),
      ],
    );
  }

  Widget datePicker(BuildContext context, {DateTime? startTime, DateTime? endTime}) {
    final bloc = context.read<AddStationBlock>();
    TimeOfDay time = const TimeOfDay(hour: 18, minute: 00);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: WHOutlinedButton(
            onPressed: () {
              WhDatePicker.of(context).showTimePicker(initialTime: time).then((newDate) {
                if (newDate != null) {
                  final formattedTime = dateTimeFromTimeOfDay(newDate);
                  bloc.add(AddStationEvent.startTimeSelected(formattedTime));
                }
              });
            },
            title: startTime != null ? formatDateTime(startTime) : context.localized.start,
          ),
        ),
        SizedBox(width: 20.w),
        WHOutlinedButton(
          onPressed: () async {
            await WhDatePicker.of(context).showTimePicker(initialTime: time).then((newDate) {
              if (newDate != null) {
                final formattedTime = dateTimeFromTimeOfDay(newDate);
                bloc.add(AddStationEvent.endTimeSelected(formattedTime));
              }
            });
          },
          title: endTime != null ? formatDateTime(endTime) : context.localized.end,
        ).expanded(),
      ],
    );
  }

  Widget kilowattHourlyRate(BuildContext context) {
    return Column(
      children: [
        WHTextField.singleLine(
          controller: context.read<AddStationBlock>().hourlyRateController,
          keyboardType: TextInputType.number,
          label: context.localized.hourlyRate,
          hintText: context.localized.hourlyRate,
        ),
        WHTextField.singleLine(
          controller: context.read<AddStationBlock>().kilowattController,
          keyboardType: TextInputType.number,
          label: context.localized.kilowatt,
          hintText: context.localized.kilowatt,
        ),
      ],
    );
  }

  Widget contactInfo(BuildContext context) {
    final bloc = context.read<AddStationBlock>();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(context.localized.contactInfo, style: body18SemiBoldTextStyle),
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
      ],
    );
  }

  Widget connectorTypes(BuildContext context, {required List<ConnectorTypeModel> connectors, required List<ConnectorTypeModel> selectedList}) {
    final bloc = context.read<AddStationBlock>();
    return Column(
      children: [
        WhMultiSelectDropDownButton<ConnectorTypeModel>(
          onTab: (item) {
            bloc.add(AddStationEvent.connectorMultiTypeChangedEvent(item));
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
              .map((item) => WHChip(
            label: item.title,
            onDeleted: () {
              bloc.add(AddStationEvent.deleteSelectedConnector(connector: item));
            },
          ))
              .toList(),
        ),
      ],
    );
  }
}
