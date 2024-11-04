import 'package:flutter/material.dart';
import 'package:watt_hub/domain/models/car_type/car_type_model.dart';
import 'package:watt_hub_localization/watt_hub_localization.dart';
import 'package:watt_hub_uikit/watt_hub_uikit.dart';

import '../../../config/config.dart';
import '../../../domain/models/car/car_model.dart';
import '../../../domain/models/connector_type/connector_type_model.dart';
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
    final addCarBloc = context.read<AddCarBloc>();
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context).addCar,
            style: body24SemiBoldTextStyle),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Center(
            child: Column(
          children: [
            40.h.heightBox,
            BlocBuilder<AddCarBloc, AddCarState>(
              builder: (context, state) {
                return WhDropDownButton<CarTypeModel>(
                  onChanged: (value) {
                    addCarBloc.add(
                      const AddCarEvent.loadCarTypes(),
                    );
                  },
                  itemLabel: (carType) => carType.title ?? "",
                  items: state.carTypes,
                  hintText: AppLocalizations.of(context).carType,
                );
              },
            ),
            40.h.heightBox,
            BlocBuilder<AddCarBloc, AddCarState>(
              builder: (context, state) {
                return WhDropDownButton<CarModel>(
                  onChanged: (value) {
                    addCarBloc.add(
                      const AddCarEvent.loadCarModels(),
                    );
                  },
                  itemLabel: (carModel) => carModel.title ?? "",
                  items: state.carModels,
                  hintText: AppLocalizations.of(context).carModel,
                );
              },
            ),
            40.h.heightBox,
            BlocBuilder<AddCarBloc, AddCarState>(
              builder: (context, state) {
                return WhDropDownButton<ConnectorTypeModel>(
                  onChanged: (value) {
                    addCarBloc.add(
                      const AddCarEvent.loadConnectors(),
                    );
                  },
                  itemLabel: (connector) => connector.title ?? "",
                  items: state.connectors,
                  hintText: AppLocalizations.of(context).connectorType,
                );
              },
            ),
          ],
        )),
      ),
    );
  }
}
