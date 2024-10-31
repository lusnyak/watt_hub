import 'package:flutter/material.dart';
import 'package:watt_hub/config/config.dart';
import 'package:watt_hub/domain/models/connector_type/connector_type_model.dart';
import 'package:watt_hub/presentation/screens/station_info/bloc/station_info_bloc.dart';
import 'package:watt_hub_localization/watt_hub_localization.dart';
import 'package:watt_hub_uikit/watt_hub_uikit.dart';

@RoutePage()
class StationInfoScreen extends StatelessWidget {
  const StationInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<StationInfoBloc>()
        ..add(const StationInfoEvent.loadConnectors()),
      child: const _StationInfoView(),
    );
  }
}

class _StationInfoView extends StatelessWidget {
  const _StationInfoView();

  @override
  Widget build(BuildContext context) {

    final imgList = [
      'https://via.placeholder.com/600x400.png?text=Image+1',
      'https://via.placeholder.com/600x400.png?text=Image+2',
      'https://via.placeholder.com/600x400.png?text=Image+3',
    ];

    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: BlocBuilder<StationInfoBloc, StationInfoState>(
          builder: (context, state) {
            return SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  WHCarouselSlider(imgList: imgList),
                  20.h.heightBox,
                  Text(AppLocalizations.of(context).location,
                      style: body18SemiBoldTextStyle),
                  Text(
                      "${AppLocalizations.of(context).street} Aram Khachatryan 14/3, Yerevan, Armenia",
                      style: body16RegularTextStyle),
                  20.h.heightBox,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      WHElevatedButton.primary(
                              onPressed: () {},
                              title: AppLocalizations.of(context).navigate)
                          .expanded(),
                      15.w.widthBox,
                      WHOutlinedButton(
                              onPressed: () {},
                              title: AppLocalizations.of(context).shareLocation)
                          .expanded(),
                    ],
                  ),
                  20.h.heightBox,
                  Text(AppLocalizations.of(context).serviceInformation,
                      style: body18SemiBoldTextStyle),
                  Text("${AppLocalizations.of(context).max} 3.7kWt",
                      style: body16RegularTextStyle),
                  Text("${AppLocalizations.of(context).hourlyRate} 10\$",
                      style: body16RegularTextStyle),
                  Text(
                      "${AppLocalizations.of(context).availableHours} 10:00-18:00",
                      style: body16RegularTextStyle),
                  20.h.heightBox,
                  BlocBuilder<StationInfoBloc, StationInfoState>(
                    builder: (context, state) {
                      return WhDropDownButton<ConnectorTypeModel>(
                        onChanged: (value) {},
                        itemLabel: (connector) => connector.title,
                        items: state.connectors,
                        hintText: AppLocalizations.of(context).connectorType,
                      );
                    },
                  ),
                  20.h.heightBox,
                  Text(AppLocalizations.of(context).contact,
                      style: body18SemiBoldTextStyle),
                  Row(
                    children: [
                      const Icon(Icons.phone_outlined),
                      10.w.widthBox,
                      Text("+37410161695", style: body16RegularTextStyle),
                    ],
                  ),
                  20.h.heightBox,
                  WHElevatedButton.primary(
                      onPressed: () {
                        AutoRouter.of(context).push(
                          const DetailRoute(),
                        );
                      },
                      title: AppLocalizations.of(context).select),
                ],
              ),
            ).paddingSymmetric(horizontal: 20.w);
          }
        ),
      ),
    );
  }
}
