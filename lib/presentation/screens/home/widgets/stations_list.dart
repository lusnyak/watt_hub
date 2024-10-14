import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:watt_hub/domain/models/charging_station/charging_station_model.dart';
import 'package:watt_hub/presentation/screens/home/bloc/home_bloc.dart';
import 'package:watt_hub/utils/extensions/localization_extensions.dart';
import 'package:watt_hub_uikit/watt_hub_uikit.dart';

class StationsList extends StatelessWidget {
  final List<ChargingStationModel> stationsList;

  const StationsList({
    super.key,
    required this.stationsList,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: stationsList.length,
      itemBuilder: (context, index) {
        final station = stationsList[index];
        return Card(
          elevation: 4,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.r),
          ),
          child: InkWell(
            onTap: () => context.read<HomeBloc>().add(CenterOnStation(station)),
            borderRadius: BorderRadius.circular(15.r),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  station.name,
                  style: body18SemiBoldTextStyle,
                ),
                8.h.heightBox,
                Row(
                  children: [
                    const Icon(
                      Icons.location_on,
                      color: Colors.grey,
                    ),
                    4.w.widthBox,
                    Expanded(
                      child: Text(
                        station.address,
                        style: const TextStyle(color: Colors.grey),
                      ),
                    ),
                  ],
                ),
                8.h.heightBox,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        const Icon(Icons.electric_car, color: Colors.green),
                        4.w.widthBox,
                        Text(
                          '${station.kwt} ${context.localized.kilowatt}',
                          style: const TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        const Icon(Icons.attach_money, color: Colors.grey),
                        4.w.widthBox,
                        Text(
                          '\$${station.hourlyRate}/${context.localized.hourlyRate}',
                          style: const TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ).paddingAll(16.r),
          ),
        ).paddingSymmetric(horizontal: 16.0, vertical: 8.0);
      },
    );
  }
}
