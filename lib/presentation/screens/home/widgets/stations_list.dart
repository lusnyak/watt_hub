import 'package:flutter/material.dart';
import 'package:watt_hub/domain/models/charging_station/charging_station_model.dart';

class StationsList extends StatelessWidget {
  final List<ChargingStationModel> stationsList;
  final Function(ChargingStationModel) onStationSelected;

  const StationsList({
    super.key,
    required this.stationsList,
    required this.onStationSelected,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: stationsList.length,
      itemBuilder: (context, index) {
        final station = stationsList[index];
        return ListTile(
          title: Text(station.name),
          subtitle: Text(station.address),
          onTap: () => onStationSelected(station),
        );
      },
    );
  }
}
