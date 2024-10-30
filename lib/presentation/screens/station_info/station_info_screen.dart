///TODO: - texaposel carousel_slider uikit
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:watt_hub/config/config.dart';
import 'package:watt_hub/domain/models/connector_type/connector_type_model.dart';
import 'package:watt_hub/presentation/screens/station_info/bloc/station_info_bloc.dart';
import 'package:watt_hub_uikit/watt_hub_uikit.dart';

@RoutePage()
class StationInfoScreen extends StatelessWidget {
  const StationInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<StationInfoBloc>()
        ..add(const StationInfoEvent.loadConnectors()),
      child: const StationInfoView(),
    );
  }
}

class StationInfoView extends StatelessWidget {
  const StationInfoView({super.key});

  @override
  Widget build(BuildContext context) {
    final stationInfoBloc = context.read<StationInfoBloc>();
    final imgList = [
      'https://via.placeholder.com/600x400.png?text=Image+1',
      'https://via.placeholder.com/600x400.png?text=Image+2',
      'https://via.placeholder.com/600x400.png?text=Image+3',
    ];

    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                BlocBuilder<StationInfoBloc, StationInfoState>(
                  builder: (context, state) {
                    return Column(
                      children: [
                        ///TODO: - unenal uikit mej element
                        CarouselSlider.builder(
                          options: CarouselOptions(
                            height: 130.0,
                            autoPlay: false,
                            enlargeCenterPage: true,
                            aspectRatio: 16 / 9,
                            enableInfiniteScroll: false,
                            onPageChanged: (index, reason) {
                              stationInfoBloc.add(
                                StationInfoEvent.changeCarouselIndex(index),
                              );
                            },
                          ),
                          itemCount: imgList.length,
                          itemBuilder: (context, index, realIndex) {
                            final urlImage = imgList[index];
                            return Container(
                              margin:
                                  const EdgeInsets.symmetric(horizontal: 12),
                              color: Colors.grey,
                              child: Image.network(
                                urlImage,
                                fit: BoxFit.cover,
                                errorBuilder: (context, error, stackTrace) =>
                                    const Icon(Icons.broken_image,
                                        color: Colors.grey),
                              ),
                            );
                          },
                        ),
                        20.h.heightBox,
                        /// TODO: - unenal uikit mej element , miavorel karuseli mej
                        AnimatedSmoothIndicator(
                          activeIndex: state.activeCarouselIndex,
                          count: imgList.length,
                          effect: const SlideEffect(
                            activeDotColor: WattHubColors.primaryGreenColor,
                            dotColor: WattHubColors.primaryLightGreenColor,
                            dotHeight: 12,
                            dotWidth: 12,
                            spacing: 8,
                          ),
                        ),
                      ],
                    );
                  },
                ),
                20.h.heightBox,
                Text("Location", style: body18SemiBoldTextStyle),
                Text("Street: Aram Khachatryan 14/3, Yerevan, Armenia",
                    style: body16RegularTextStyle),
                20.h.heightBox,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: WHElevatedButton.primary(
                          onPressed: () {}, title: "Navigate"),
                    ),
                    15.w.widthBox,
                    Expanded(
                      child: WHOutlinedButton(
                          onPressed: () {}, title: "Share Location"),
                    ),
                  ],
                ),
                20.h.heightBox,
                Text("Service Information", style: body18SemiBoldTextStyle),
                Text("Max: 3.7kWt", style: body16RegularTextStyle),
                Text("Hourly rate: 10\$", style: body16RegularTextStyle),
                Text("Available hours: 10:00-18:00",
                    style: body16RegularTextStyle),
                20.h.heightBox,
                BlocBuilder<StationInfoBloc, StationInfoState>(
                  builder: (context, state) {
                    return WhDropDownButton<ConnectorTypeModel>(
                      onChanged: (value) {},
                      itemLabel: (connector) => connector.title,
                      items: state.connectors,
                      hintText: "Connector Type",
                    );
                  },
                ),
                20.h.heightBox,
                Text("Contact", style: body18SemiBoldTextStyle),
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
                    title: "Select"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
