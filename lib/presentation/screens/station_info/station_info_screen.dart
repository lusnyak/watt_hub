import 'package:auto_route/auto_route.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:watt_hub/config/routes/app_router.dart';
import 'package:watt_hub_uikit/watt_hub_uikit.dart';

import '../../../data/fake_data/connectors_data/connectors_data.dart';
import '../../../domain/models/connector_type/connector_type_model.dart';

@RoutePage()
class StationInfoScreen extends StatefulWidget {
  const StationInfoScreen({super.key});

  @override
  State<StationInfoScreen> createState() => _StationInfoScreenState();
}

int activeIndex = 0;
final List<String> imgList = [
  'https://via.placeholder.com/600x400.png?text=Image+1',
  'https://via.placeholder.com/600x400.png?text=Image+2',
  'https://via.placeholder.com/600x400.png?text=Image+3',
];

class _StationInfoScreenState extends State<StationInfoScreen> {
  @override
  Widget build(BuildContext context) {
    final connectors = connectorsData
        .map(
          (connectorJson) => ConnectorTypeModel.fromJson(connectorJson),
        )
        .toList();

    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Column(
                children: [
                  CarouselSlider.builder(
                      options: CarouselOptions(
                        height: 130.0,
                        autoPlay: false,
                        enlargeCenterPage: true,
                        aspectRatio: 16 / 9,
                        enableInfiniteScroll: false,
                        onPageChanged: (index, reason) =>
                            setState(() => activeIndex = index),
                      ),
                      itemCount: imgList.length,
                      itemBuilder: (context, index, realIndex) {
                        final urlImage = imgList[index];
                        return buildImage(urlImage, index);
                      }),
                  20.h.heightBox,
                  buildIndicator()
                ],
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
        ),
      ).paddingAll(20.0),
    );
  }

  Widget buildImage(String urlImage, int index) => Container(
      margin: const EdgeInsets.symmetric(horizontal: 12),
      color: Colors.grey,
      child: Image.network(
        urlImage,
        fit: BoxFit.cover,
      ));

  Widget buildIndicator() => AnimatedSmoothIndicator(
        activeIndex: activeIndex,
        count: imgList.length,
        effect: SlideEffect(
          activeDotColor: WattHubColors.primaryGreenColor,
          dotColor: WattHubColors.primaryLightGreenColor,
          dotHeight: 12.r,
          dotWidth: 12.r,
          spacing: 8,
        ),
      );
}
