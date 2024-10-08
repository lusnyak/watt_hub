import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:latlong2/latlong.dart';
import 'package:watt_hub/config/routes/app_router.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:watt_hub_uikit/watt_hub_uikit.dart';

@RoutePage()
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  MapController mapController = MapController();
  LatLng? currentLocation;
  bool isMapReady = false;

  @override
  void initState() {
    super.initState();
    _getCurrentLocation();
  }

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: null,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: IconButton(
                onPressed: () => AutoRouter.of(context).push(
                  
                      const FilterRoute(),
                    ),
                icon: const Icon(
                  Icons.filter_list,
                  size: 30.0,
                )),
          ),
        ],
      ),
      body: SafeArea(
        child: Container(
          child: currentLocation != null
              ? FlutterMap(
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
                )
              : const Center(
                  child: CircularProgressIndicator(),
                ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.list),
      ),
    );
  }
}
