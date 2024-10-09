import 'package:flutter/material.dart';
import 'package:watt_hub/domain/models/charging_station/charging_station_model.dart';
import 'package:watt_hub_uikit/watt_hub_uikit.dart';

class StationsList extends StatelessWidget {
  const StationsList({
    super.key,
    required this.stationsList,
    required this.onStationSelected, // Add the callback for station selection
  });

  final List<ChargingStationModel> stationsList;
  final Function(ChargingStationModel) onStationSelected; // Callback type

  @override
  Widget build(BuildContext context) {
    if (stationsList.isEmpty) {
      return const Center(child: Text('No charging stations available.'));
    }

    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Stations',
            style: body32MediumTextStyle,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: stationsList.length,
              itemBuilder: (context, index) {
                final item = stationsList[index];
                return Card(
                  child: ListTile(
                    title: Text(item.name),
                    subtitle: Text(item.address),
                    onTap: () {
                      onStationSelected(item); // Call the callback on tap
                    },
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
