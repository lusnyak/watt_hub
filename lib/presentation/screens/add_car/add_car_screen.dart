import 'dart:io';
import 'package:flutter/material.dart';
import 'package:watt_hub/config/config.dart';
import 'package:watt_hub/presentation/screens/add_car/view_model/add_car_view_model.dart';
import 'package:watt_hub_localization/watt_hub_localization.dart';
import 'package:watt_hub_uikit/watt_hub_uikit.dart';
import 'package:watt_hub/domain/models/car/car_model.dart';
import 'package:watt_hub/domain/models/car_type/car_type_model.dart';
import 'package:watt_hub/domain/models/connector_type/connector_type_model.dart';
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
      child: const _AddCarView(),
    );
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
        child: BlocConsumer<AddCarBloc, AddCarState>(
          listener: (listenerContext, state) {
            state.maybeWhen(
              orElse: () {},
              error: (message) {
                ScaffoldMessenger.of(listenerContext).showSnackBar(
                  SnackBar(content: Text(message)),
                );
              },
              loaded: (AddCarViewModel? addCarData) {
                if (addCarData?.addCar != null) {
                  // Show success popup
                  WHPopup.of(listenerContext).showWithConfirm(
                    title: "The car was successfully created.",
                    subTitle: "Congratulations",
                    confirmButtonTitle: "Confirm",
                    onConfirmPressed: () {
                      if (context.router.canPop()) {
                        debugPrint("AutoRoute can pop, trying to pop...");
                        context.router.maybePop();
                      } else {
                        debugPrint("No route to pop, using Navigator.pop()");
                        Navigator.of(listenerContext).pop();
                      }
                    },
                  );
                }
              },
            );
          },
          builder: (context, state) {
            final carState = state.maybeWhen(
                orElse: () => AddCarViewModel(
                      carTypes: [],
                      carModels: [],
                      connectors: [],
                      images: null,
                      selectedCarType: null,
                      selectedCarModel: null,
                      selectedConnector: null,
                      addCar: null,
                    ),
                loaded: (AddCarViewModel? addCarData) => (addCarData));

            return Padding(
              padding: EdgeInsets.all(20.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  dropDownsSection(
                    context,
                    carState?.carTypes ?? [],
                    carState?.carModels ?? [],
                    carState?.connectors ?? [],
                    carState?.selectedCarType,
                    carState?.selectedCarModel,
                    carState?.selectedConnector,
                  ),
                  20.h.heightBox,
                  uploadCarImage(context, carState?.images),
                  10.h.heightBox,
                  if (carState?.images != null)
                    showCarImage(context, carState!.images!),
                  20.h.heightBox,
                  WHElevatedButton.primary(
                    onPressed: () {
                      context
                          .read<AddCarBloc>()
                          .add(const AddCarEvent.createCar());
                    },
                    title: AppLocalizations.of(context).select,
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }

  Widget dropDownsSection(
      BuildContext context,
      List<CarTypeModel> carTypes,
      List<CarModelJson> carModels,
      List<ConnectorTypeModel> connectors,
      CarTypeModel? selectedCarType,
      CarModelJson? selectedCarModel,
      ConnectorTypeModel? selectedConnector) {
    return Column(
      children: [
        WhDropDownButton<CarTypeModel>(
          value: selectedCarType,
          onChanged: (value) {
            if (value != null) {
              context.read<AddCarBloc>().add(AddCarEvent.selectCarType(value));
            }
          },
          itemLabel: (carType) => carType.title ?? "",
          items: carTypes,
          hintText: AppLocalizations.of(context).carType,
        ),
        20.h.heightBox,
        WhDropDownButton<CarModelJson>(
          value: selectedCarModel,
          onChanged: (value) {
            if (value != null) {
              context.read<AddCarBloc>().add(AddCarEvent.selectCarModel(value));
            }
          },
          itemLabel: (carModel) => carModel.title ?? "",
          items: carModels,
          hintText: AppLocalizations.of(context).carModel,
        ),
        20.h.heightBox,
        WhDropDownButton<ConnectorTypeModel>(
          value: selectedConnector,
          onChanged: (value) {
            if (value != null) {
              context
                  .read<AddCarBloc>()
                  .add(AddCarEvent.selectConnector(value));
            }
          },
          itemLabel: (connector) => connector.title ?? "",
          items: connectors,
          hintText: AppLocalizations.of(context).connectorType,
        ),
      ],
    );
  }

  Widget uploadCarImage(BuildContext context, File? images) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(AppLocalizations.of(context).addCarImage,
            style: body18SemiBoldTextStyle),
        if (images == null)
          WHImagePicker.single(
            onPicked: (file) {
              context.read<AddCarBloc>().add(AddCarEvent.imagesSelected(file));
            },
            child: const ImagePickerUploadButton(),
          ),
      ],
    );
  }

  Widget showCarImage(BuildContext context, File images) {
    return Stack(
      children: [
        Image.file(
          images,
          height: 100.h,
          width: 85.w,
          fit: BoxFit.cover,
        ),
        Positioned(
          top: -12,
          left: 52,
          child: IconButton(
            icon: const Icon(Icons.dangerous_outlined, color: Colors.red),
            onPressed: () => context
                .read<AddCarBloc>()
                .add(const AddCarEvent.removeImages()),
          ),
        ),
      ],
    );
  }
}
