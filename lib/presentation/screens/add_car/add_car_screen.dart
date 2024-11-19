import 'dart:io';
import 'package:flutter/material.dart';
import 'package:watt_hub/config/config.dart';
import 'package:watt_hub/domain/models/car/car_model.dart';
import 'package:watt_hub/domain/models/car_type/car_type_model.dart';
import 'package:watt_hub/domain/models/connector_type/connector_type_model.dart';
import 'package:watt_hub_localization/watt_hub_localization.dart';
import 'package:watt_hub_uikit/watt_hub_uikit.dart';
import '../add_station/widgets/image_picker_upload_button.dart';
import 'bloc/add_car_bloc.dart';

@RoutePage()
class AddCarScreen extends StatelessWidget {
  const AddCarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (_) {
          final bloc = getIt<AddCarBloc>();
          bloc.add(const AddCarEvent.loadCarTypes());
          bloc.add(const AddCarEvent.loadCarModels());
          bloc.add(const AddCarEvent.loadConnectors());
          return bloc;
        },
        child: const _AddCarView());
  }
}

class _AddCarView extends StatelessWidget {
  const _AddCarView();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context).addCar,
            style: body24SemiBoldTextStyle),
        centerTitle: true,
      ),
      body: SafeArea(
        child: BlocBuilder<AddCarBloc, AddCarState>(builder: (context, state) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              dropDownsSection(context, state),
              20.h.heightBox,
              uploadCarImage(context,state),
              10.h.heightBox,
              if (state.images != null) showCareImage(context, state),
              20.h.heightBox,
              WHElevatedButton.primary(
                onPressed: () {},
                title: AppLocalizations.of(context).select,
              ),
            ],
          );
        }),
      ).paddingAll(20.w),
    );
  }
}

Widget dropDownsSection(BuildContext context, state) {
  return Column(
    children: [
      WhDropDownButton<CarTypeModel>(
        value: state.selectedCarType,
        onChanged: (value) {
          if (value != null) {
            context.read<AddCarBloc>().add(
                  AddCarEvent.selectCarType(value),
                );
          }
        },
        itemLabel: (carType) => carType.title ?? "",
        items: state.carTypes,
        hintText: AppLocalizations.of(context).carType,
      ),
      20.h.heightBox,
      WhDropDownButton<CarModel>(
        value: state.selectedCarModel,
        onChanged: (value) {
          if (value != null) {
            context.read<AddCarBloc>().add(
                  AddCarEvent.selectCarModel(value),
                );
          }
        },
        itemLabel: (carModel) => carModel.title ?? "",
        items: state.carModels,
        hintText: AppLocalizations.of(context).carModel,
      ),
      20.h.heightBox,
      WhDropDownButton<ConnectorTypeModel>(
        value: state.selectedConnector,
        onChanged: (value) {
          if (value != null) {
            context.read<AddCarBloc>().add(
                  AddCarEvent.selectConnector(value),
                );
          }
        },
        itemLabel: (connector) => connector.title ?? "",
        items: state.connectors,
        hintText: AppLocalizations.of(context).connectorType,
      ),
    ],
  );
}

Widget uploadCarImage(BuildContext context,state) {
  final currentImages = state.images ?? "";
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(AppLocalizations.of(context).addCarImage,
          style: body18SemiBoldTextStyle),
      if(currentImages == "")
      WHImagePicker.single(
        onPicked: (file) {
          context.read<AddCarBloc>().add(AddCarEvent.imagesSelected(file));
        },
        child: const ImagePickerUploadButton(),
      ),
    ],
  );
}

Widget showCareImage(BuildContext context, state) {
  return Stack(children: [
    Image.file(
      height: 100.h,
      width: 85.w,
      File(state.images!.path),
      fit: BoxFit.cover,
    ),
    Positioned(
      top: -12,
      left: 52,
      child: IconButton(
        icon: const Icon(Icons.dangerous_outlined, color: Colors.red),
        onPressed: () =>
            context.read<AddCarBloc>().add(const AddCarEvent.removeImages()),
      ),
    ),
  ]);
}
