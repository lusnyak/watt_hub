class AddStationAddressModel {
  final String? address;
  final double? latitude;
  final double? longitude;

  const AddStationAddressModel({
  required this.address,
  required this.latitude,
  required this.longitude,
  });
}

class AddStationTimeModel {
  final DateTime? startTime;
  final DateTime? endTime;

  const AddStationTimeModel({
    required this.startTime,
    required this.endTime,
  });
}


