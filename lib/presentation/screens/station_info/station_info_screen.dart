import 'package:auto_route/auto_route.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:watt_hub/config/routes/app_router.dart';
import 'package:watt_hub_uikit/watt_hub_uikit.dart';

import '../../../data/fake_data/connectors_data/connectors_data.dart';
import '../../../domain/models/connector_type/connector_type_model.dart';

@RoutePage()
class StationInfoScreen extends StatelessWidget {
  const StationInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> imgList = [
      'https://via.placeholder.com/600x400.png?text=Image+1',
      'https://via.placeholder.com/600x400.png?text=Image+2',
      'https://via.placeholder.com/600x400.png?text=Image+3',
    ];
    final connectors = connectorsData
        .map(
          (connectorJson) => ConnectorTypeModel.fromJson(connectorJson),
        )
        .toList();

    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            CarouselSlider(
              options: CarouselOptions(
                height: 130.0,
                autoPlay: false,
                enlargeCenterPage: true,
                aspectRatio: 16 / 9,
                //  autoPlayInterval: const Duration(seconds: 3),
              ),
              items: imgList
                  .map((item) => Center(
                        child:
                            Image.network(item, fit: BoxFit.cover, width: 700),
                      ))
                  .toList(),
            ),
            20.h.heightBox,
            Text(
              "Location",
              textAlign: TextAlign.left,
              style: body18SemiBoldTextStyle,
            ),
            Text(
              "Street: Aram Khachatryan 14/3, Yerevan, Armenia",
              textAlign: TextAlign.left,
              style: body18RegularTextStyle,
            ),
            20.h.heightBox,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                  child: WHElevatedButton.primary(title: "Navigate"),
                ),
                15.w.widthBox,
                const Expanded(
                  child: WHOutlinedButton(title: "Share Location"),
                )
              ],
            ),
            20.h.heightBox,
            Text(
              "Service Information",
              textAlign: TextAlign.left,
              style: body18SemiBoldTextStyle,
            ),
            Text(
              "Max: 3.7kWt",
              textAlign: TextAlign.left,
              style: body18RegularTextStyle,
            ),
            Text(
              "Hourly rate: 10\$",
              textAlign: TextAlign.left,
              style: body18RegularTextStyle,
            ),
            Text(
              "Available hours: 10:00-18:00",
              textAlign: TextAlign.left,
              style: body18RegularTextStyle,
            ),
            WhDropDownButton(
                onChanged: (value) {
                  if (value != null) {}
                },
                hintText: "Connector Type ",
                items: connectors,
                itemLabel: (connector) => connector.title),
            20.h.heightBox,
            Text(
              "Contact",
              textAlign: TextAlign.left,
              style: body18SemiBoldTextStyle,
            ),
            Row(
              children: [
                const Icon(Icons.phone_outlined),
                10.w.widthBox,
                Text(
                  "+37410161695",
                  textAlign: TextAlign.left,
                  style: body18RegularTextStyle,
                ),
              ],
            ),
            20.h.heightBox,
            WHElevatedButton.primary(
              onPressed: () => AutoRouter.of(context).push(
                const DetailRoute(),
              ),
              title: "Select",
            )
          ],
        ),
      ).paddingAll(20.0),
    );
  }
}
