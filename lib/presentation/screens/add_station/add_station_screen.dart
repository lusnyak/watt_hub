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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              "Add Station Screen!",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 24.0,
                color: Colors.blue,
              ),
            ),
            20.h.heightBox,
            ElevatedButton(
                onPressed: () => AutoRouter.of(context)
                    .push(const ChooseStationAddressRoute()),
                child: const Text(
                  "Choose Station Address",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.blue,
                  ),
                ))
          ],
        ),
      ).paddingAll(20.0),
    );
  }
}