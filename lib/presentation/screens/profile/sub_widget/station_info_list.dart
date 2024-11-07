import 'package:flutter/material.dart';
import 'package:watt_hub/domain/models/station/station_model.dart';
import 'package:watt_hub/presentation/screens/profile/sub_widget/profile_station_item.dart';

class StationInfoList extends StatelessWidget {
  final List<StationModel> stationsData;
  const StationInfoList({super.key, required this.stationsData});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ...stationsData
            .map((stationData) => ProfileStationItem(stationData: stationData)),
      ],
    );
  }
}
