import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_map_marker_cluster/flutter_map_marker_cluster.dart';
import 'package:latlong2/latlong.dart';
import 'package:watt_hub/domain/models/station/station_model.dart';
import 'package:watt_hub/presentation/screens/home/bloc/home_bloc.dart';
import 'package:watt_hub_uikit/watt_hub_uikit.dart';
import 'station_info_modal.dart';

class MapContainer extends StatelessWidget {
  final List<StationModel> chargingStations;

  const MapContainer({
    super.key,
    required this.chargingStations,
  });

  @override
  Widget build(BuildContext context) {
    final currentLocation = context.read<HomeBloc>().currentLocation;
    return currentLocation != null
        ? FlutterMap(
            mapController: context.read<HomeBloc>().mapController,
            options: MapOptions(
              initialCenter: context.read<HomeBloc>().currentLocation ??
              
                  const LatLng(40.7942, 43.84528),
              initialZoom: 18.0,
            ),
            children: [
              TileLayer(
                urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                userAgentPackageName: 'com.example.app',
              ),
              if (!context.read<HomeBloc>().isMapReady)
                MarkerClusterLayerWidget(
                  options: MarkerClusterLayerOptions(
                    maxClusterRadius: 45,
                    size: Size(40.w, 40.h),
                    alignment: Alignment.center,
                    maxZoom: 15,
                    markers: [
                      for (var station in chargingStations)
                        Marker(
                          width: 56.w,
                          height: 56.h,
                          point: LatLng(station.latitude, station.longitude),
                          child: GestureDetector(
                            onTap: () => showStationInfo(context, station),
                            child: Icon(
                              Icons.charging_station,
                              size: 56.r,
                              color: WattHubColors.primaryGreenColor,
                            ),
                          ),
                        ),
                      Marker(
                        width: 80.w,
                        height: 80.h,
                        point: currentLocation,
                        child: Icon(
                          Icons.location_on_outlined,
                          size: 56.r,
                          color: WattHubColors.primaryGreenColor,
                        ),
                      ),
                    ],
                    builder: (context, markers) {
                      return Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.r),
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
                ).paddingAll(50.r),
            ],
          )
        : const Center(child: CircularProgressIndicator());
  }
}
