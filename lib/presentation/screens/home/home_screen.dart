import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:watt_hub/config/routes/app_router.dart';
import 'package:watt_hub/config/locator/service_locator.dart';
import 'package:watt_hub/presentation/screens/home/bloc/home_bloc.dart';
import 'package:watt_hub/presentation/screens/home/widgets/map_container.dart';
import 'package:watt_hub/presentation/screens/home/widgets/stations_list.dart';
import 'package:watt_hub/utils/helpers/location_helper.dart';
import 'package:watt_hub_uikit/watt_hub_uikit.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<HomeBloc>()..add(const LoadStation()),
      child: const _HomeView(),
    );
  }
}

class _HomeView extends StatefulWidget {
  const _HomeView();

  @override
  State<_HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<_HomeView> {
  final LocationManager _locationManager = LocationManager();
  final MapController mapController = MapController();

  LatLng? currentLocation;
  bool isMapReady = false;
  bool isList = true;

  Future<void> _initializeLocation() async {
    LatLng? location = await _locationManager.getCurrentLocation();
    if (location != null) {
      setState(() {
        currentLocation = location;
      });
      if (isMapReady) {
        mapController.move(location, 18.0);
      }
    }
  }

  @override
  void initState() {
    super.initState();
    _initializeLocation();
    BlocProvider.of<HomeBloc>(context).add(const LoadStation());
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
        actions: [
          WHIconButton.primary(
            icon: const Icon(
              Icons.filter_alt,
            ),
            onPressed: () => AutoRouter.of(context).push(const FilterRoute()),
          ).paddingOnly(right: 20.w)
        ],
      ),
      body: SafeArea(
        top: false,
        child: BlocBuilder<HomeBloc, HomeState>(
          builder: (context, state) {
            return state.when(
              initial: () => nil,
              loading: () => const Center(child: CircularProgressIndicator()),
              error: (message) => Center(child: Text(message)),
              loaded: (stations) {
                return isList
                    ? MapContainer(
                        mapController: mapController,
                        chargingStations: stations,
                        currentLocation: currentLocation,
                        isMapReady: isMapReady,
                      )
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
              },
            );
          },
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          if (isList)
            FloatingActionButton(
              onPressed: () {
                if (currentLocation != null) {
                  mapController.move(currentLocation!, 18.0);
                }
              },
              child: const Icon(Icons.my_location_outlined),
            ),
          20.widthBox,
          FloatingActionButton(
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
