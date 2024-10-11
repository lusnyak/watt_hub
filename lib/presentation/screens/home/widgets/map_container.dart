import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_map_marker_cluster/flutter_map_marker_cluster.dart';
import 'package:latlong2/latlong.dart';
import 'package:watt_hub/domain/models/charging_station/charging_station_model.dart';
import 'package:watt_hub_uikit/watt_hub_uikit.dart';
import 'station_info_modal.dart';

class MapContainer extends StatelessWidget {
  final MapController mapController;
  final LatLng? currentLocation;
  final bool isMapReady;
  final List<ChargingStationModel> chargingStations;

  const MapContainer({
    super.key,
    required this.mapController,
    required this.chargingStations,
    required this.currentLocation,
    required this.isMapReady,
  });

  @override
  Widget build(BuildContext context) {
    return currentLocation != null
        ? FlutterMap(
            mapController: mapController,
            options: MapOptions(
              initialCenter: currentLocation ?? const LatLng(40.7942, 43.84528),
              initialZoom: 18.0,
            ),
            children: [
              TileLayer(
                urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                userAgentPackageName: 'com.example.app',
              ),
              if (!isMapReady)
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
                        point:
                            currentLocation ?? const LatLng(40.7942, 43.84528),
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
