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
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          child: Card(
            elevation: 4,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            child: InkWell(
              onTap: () => onStationSelected(station),
              borderRadius: BorderRadius.circular(15),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      station.name,
                      style: const TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8.0),
                    Row(
                      children: [
                        const Icon(
                          Icons.location_on,
                          color: Colors.grey,
                        ),
                        const SizedBox(width: 4.0),
                        Expanded(
                          child: Text(
                            station.address,
                            style: const TextStyle(color: Colors.grey),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 8.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            const Icon(Icons.electric_car, color: Colors.green),
                            const SizedBox(width: 4.0),
                            Text(
                              '${station.kwt} kW',
                              style: const TextStyle(color: Colors.grey),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const Icon(Icons.attach_money, color: Colors.grey),
                            const SizedBox(width: 4.0),
                            Text(
                              '\$${station.hourlyRate}/hr',
                              style: const TextStyle(color: Colors.grey),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
