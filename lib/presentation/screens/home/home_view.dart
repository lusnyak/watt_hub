import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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

  Widget _mapContainer(List<ChargingStationModel> chargingStations) {
    return Container(
      child: currentLocation != null
          ? Stack(
              children: [
                FlutterMap(
                  mapController: mapController,
                  options: MapOptions(
                    initialCenter:
                        currentLocation ?? const LatLng(40.7942, 43.84528),
                    initialZoom: 18.0,
                    onMapReady: () {
                      setState(() {
                        isMapReady = true;
                      });
                    },
                  ),
                  children: [
                    TileLayer(
                      urlTemplate:
                          'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                      userAgentPackageName: 'com.example.app',
                    ),
                    if (isMapReady)
                      MarkerLayer(markers: [
                        for (var item in chargingStations)
                          Marker(
                            point: LatLng(item.latitude, item.longitude),
                            child: const Icon(
                              Icons.location_on_outlined,
                              size: 56.0,
                              color: WattHubColors.primaryGreenColor,
                            ),
                          ),
                        Marker(
                          width: 80.0,
                          height: 80.0,
                          point: currentLocation ??
                              const LatLng(40.7942, 43.84528),
                          child: const Icon(
                            Icons.location_on_outlined,
                            size: 56.0,
                            color: WattHubColors.primaryGreenColor,
                          ),
                        )
                      ])
                  ],
                ),
                Positioned(
                  top: 20.0,
                  right: 20.0,
                  child: WHIconButton.secondary(
                    icon: const Icon(
                      Icons.filter_alt,
                    ),
                    onPressed: () =>
                        AutoRouter.of(context).push(const FilterRoute()),
                  ),
                ),
              ],
            )
          : const Center(
              child: CircularProgressIndicator(),
            ),
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
      body: SafeArea(
        child: BlocBuilder<ChargingStationBloc, ChargingStationState>(
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
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              setState(() {
                isList = !isList;
              });
            },
            child: Icon(isList ? Icons.list : Icons.map),
          ),
          20.heightBox,
          if (isList)
            FloatingActionButton(
              onPressed: () {
                if (currentLocation != null) {
                  mapController.move(currentLocation!, 18.0);
                }
              },
              child: const Icon(Icons.my_location_outlined),
            )
        ],
      ),
    );
  }
}
