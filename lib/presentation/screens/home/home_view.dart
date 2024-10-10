import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_map_marker_cluster/flutter_map_marker_cluster.dart';
import 'package:geolocator/geolocator.dart';
import 'package:latlong2/latlong.dart';
import 'package:watt_hub/config/routes/app_router.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:watt_hub/domain/models/charging_station/charging_station_model.dart';
import 'package:watt_hub/presentation/screens/home/charging_station_bloc/charging_station_bloc.dart';
import 'package:watt_hub/presentation/screens/home/charging_station_bloc/charging_station_event.dart';
import 'package:watt_hub/presentation/screens/home/charging_station_bloc/charging_station_state.dart';
import 'package:watt_hub/presentation/screens/home/widgets/stations_list.dart';
import 'package:watt_hub_uikit/watt_hub_uikit.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  MapController mapController = MapController();
  LatLng? currentLocation;
  bool isMapReady = false;
  bool isList = true;

  Future<void> _getCurrentLocation() async {
    LocationPermission permission = await Geolocator.requestPermission();
    if (permission == LocationPermission.denied) {
      return;
    }

    Position position = await Geolocator.getCurrentPosition();
    setState(() {
      currentLocation = LatLng(position.latitude, position.longitude);
    });

    if (currentLocation != null) {
      mapController.move(currentLocation!, 18.0);
    }
  }

  void showStationInfo(ChargingStationModel station) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: 220,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    station.name,
                    style: body16SemiBoldTextStyle,
                  ),
                  Text(
                    station.address,
                    style: body14RegularTextStyle,
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    '${station.averageRate}',
                    style: body14RegularTextStyle,
                  ),
                  10.widthBox,
                  RatingBarIndicator(
                    rating: station.averageRate,
                    itemBuilder: (
                      context,
                      index,
                    ) =>
                        const Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    itemCount: 5,
                    itemSize: 25.0,
                    direction: Axis.horizontal,
                  ),
                  10.widthBox,
                  Text(
                    '(${station.reviews.length} reviews)',
                    style: body14RegularTextStyle.copyWith(
                      color: Colors.grey,
                    ),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: WHOutlinedButton(
                      title: 'View',
                      onPressed: () =>
                          AutoRouter.of(context).push(const StationInfoRoute()),
                    ),
                  ),
                  20.widthBox,
                  Expanded(
                    child: WHElevatedButton.primary(
                      title: 'Book',
                      onPressed: () =>
                          AutoRouter.of(context).push(const DetailRoute()),
                    ),
                  )
                ],
              )
            ],
          ).paddingAll(16.w),
        );
      },
    );
  }

  Widget _mapContainer(List<ChargingStationModel> chargingStations) {
    return currentLocation != null
        ? FlutterMap(
            mapController: mapController,
            options: MapOptions(
              initialCenter: currentLocation ?? const LatLng(40.7942, 43.84528),
              initialZoom: 18.0,
              onMapReady: () {
                setState(() {
                  isMapReady = true;
                });
              },
            ),
            children: [
              TileLayer(
                urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                userAgentPackageName: 'com.example.app',
              ),
              if (isMapReady)
                MarkerClusterLayerWidget(
                  options: MarkerClusterLayerOptions(
                    maxClusterRadius: 45,
                    size: const Size(40, 40),
                    alignment: Alignment.center,
                    padding: const EdgeInsets.all(50),
                    maxZoom: 15,
                    markers: [
                      for (var item in chargingStations)
                        Marker(
                          width: 56.0,
                          height: 56.0,
                          point: LatLng(item.latitude, item.longitude),
                          child: GestureDetector(
                            onTap: () => {
                              showStationInfo(item),
                            },
                            child: const Icon(
                              Icons.charging_station,
                              size: 56.0,
                              color: WattHubColors.primaryGreenColor,
                            ),
                          ),
                        ),
                      Marker(
                        width: 80.0,
                        height: 80.0,
                        point:
                            currentLocation ?? const LatLng(40.7942, 43.84528),
                        child: const Icon(
                          Icons.location_on_outlined,
                          size: 56.0,
                          color: WattHubColors.primaryGreenColor,
                        ),
                      )
                    ],
                    builder: (context, markers) {
                      return Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: WattHubColors.primaryGreenColor,
                        ),
                        child: Center(
                          child: Text(
                            markers.length.toString(),
                            style: const TextStyle(color: Colors.white),
                          ),
                        ),
                      );
                    },
                  ),
                ),
            ],
          )
        : const Center(
            child: CircularProgressIndicator(),
          );
  }

  @override
  void initState() {
    super.initState();
    _getCurrentLocation();
    BlocProvider.of<ChargingStationBloc>(context).add(LoadChargingStations());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarIconBrightness: Brightness.dark,
        ),
        leading: null,
        actions: [
          WHIconButton.primary(
            icon: const Icon(
              Icons.filter_alt,
            ),
            onPressed: () => AutoRouter.of(context).push(const FilterRoute()),
          ).paddingOnly(right: 20.0)
        ],
      ),
      body: Stack(
        children: [
          BlocBuilder<ChargingStationBloc, ChargingStationState>(
            builder: (context, state) {
              if (state is ChargingStationLoading) {
                return const Center(child: CircularProgressIndicator());
              } else if (state is ChargingStationError) {
                return Center(child: Text(state.message));
              } else if (state is ChargingStationLoaded) {
                final stations = state.chargingStations;
                return isList
                    ? _mapContainer(stations)
                    : StationsList(
                        stationsList: stations,
                        onStationSelected: (selectedStation) {
                          setState(() {
                            mapController.move(
                              LatLng(selectedStation.latitude,
                                  selectedStation.longitude),
                              18.0,
                            );
                            isList = true;
                          });
                        },
                      );
              }
              return const Center(child: Text('No Data'));
            },
          )
        ],
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          if (isList)
            FloatingActionButton(
              shape: const StadiumBorder(),
              onPressed: () {
                if (currentLocation != null) {
                  mapController.move(currentLocation!, 18.0);
                }
              },
              child: const Icon(Icons.my_location_outlined),
            ),
          20.widthBox,
          FloatingActionButton(
            shape: const StadiumBorder(),
            onPressed: () {
              setState(() {
                isList = !isList;
              });
            },
            child: Icon(isList ? Icons.list : Icons.map),
          ),
        ],
      ),
    );
  }
}
