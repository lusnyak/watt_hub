import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_map_marker_cluster/flutter_map_marker_cluster.dart';
import 'package:latlong2/latlong.dart';
import 'package:watt_hub/config/config.dart';
import 'package:watt_hub/presentation/screens/choose_station_address/bloc/choose_station_address_bloc.dart';
import 'package:watt_hub/utils/extensions/extensions.dart';
import 'package:watt_hub_uikit/watt_hub_uikit.dart';

@RoutePage()
class ChooseStationAddressScreen extends StatelessWidget {
  const ChooseStationAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) {
        final bloc = getIt<ChooseStationAddressBloc>();
        bloc.add(const ChooseStationAddressEvent.started());
        bloc.add(const ChooseStationAddressEvent.initializeLocation());
        return bloc;
      },
      child: const _ChooseStationAddressScreenBody(),
    );
  }
}

class _ChooseStationAddressScreenBody extends StatelessWidget {
  const _ChooseStationAddressScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(context.localized.flutterMap)),
      body: BlocBuilder<ChooseStationAddressBloc, ChooseStationAddressState>(
        builder: (context, state) {
          return state.when(
            initial: () => Container(),
            loading: () => const Center(child: WHCircularSpin()),
            error: (message) =>
                Center(child: Text('${context.localized.error}: $message')),
            loaded: (address, location) {
              return FlutterMap(
                options: MapOptions(
                  onTap: (tapPosition, point) {
                    context.read<ChooseStationAddressBloc>().add(
                          ChooseStationAddressEvent.locationTapped(point),
                        );
                  },
                  initialCenter: location ?? const LatLng(40.7942, 43.84528),
                  initialZoom: 18.0,
                ),
                children: [
                  TileLayer(
                    urlTemplate:
                        'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                    userAgentPackageName: 'com.example.app',
                  ),
                  MarkerClusterLayerWidget(
                    options: MarkerClusterLayerOptions(
                      maxClusterRadius: 45,
                      size: const Size(40, 40),
                      alignment: Alignment.center,
                      maxZoom: 15,
                      markers: location != null
                          ? [
                              Marker(
                                width: 80.w,
                                height: 80.h,
                                point: context
                                    .read<ChooseStationAddressBloc>()
                                    .clickedLocation!,
                                child: Icon(
                                  Icons.location_on_outlined,
                                  size: 56.r,
                                  color: WattHubColors.primaryGreenColor,
                                ),
                              ),
                            ]
                          : [],
                      builder: (BuildContext context, List<Marker> markers) {
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
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final bloc = context.read<ChooseStationAddressBloc>();
          final location = bloc.clickedLocation;

          if (location != null) {
            bloc.add(
              ChooseStationAddressEvent.addressRequested(
                  location.latitude, location.longitude),
            );

            bloc.stream.listen((state) {
              final address = state.maybeWhen(
                  loaded: (address, _) => address, orElse: () => null);

              if (address != null) {
                final result = {
                  'address': address,
                  'latitude': location.latitude,
                  'longitude': location.longitude,
                };
                context.router.maybePop(
                   result);
              } else {
                ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Address not found.')));
              }
            });
          } else {
            ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                content: Text('No location selected. Please tap on the map.')));
          }
        },
        child: const Icon(Icons.check),
      ),
    );
  }
}
