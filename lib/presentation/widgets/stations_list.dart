import 'package:flutter/material.dart';
import 'package:latlong2/latlong.dart';
import 'package:watt_hub/config/config.dart';

import 'package:watt_hub/domain/models/station/station_model.dart';
import 'package:watt_hub/presentation/screens/home/bloc/home_bloc.dart';
import 'package:watt_hub/presentation/widgets/station_list_item.dart';

class StationsList extends StatelessWidget {
  final List<StationModel> stationsList;
  final LatLng? currentLocation;

  const StationsList({
    super.key,
    required this.stationsList,
    this.currentLocation,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: stationsList.length,
      itemBuilder: (context, index) {
        final stationItem = stationsList[index];
        return StationListItem(
          stationListItem: stationItem,
          onTap: () => context.read<HomeBloc>().add(
                HomeEvent.centerOnStation(stationItem, currentLocation),
              ),
        );
      },
    );
  }
}
