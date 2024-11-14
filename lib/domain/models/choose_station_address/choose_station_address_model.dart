import 'package:freezed_annotation/freezed_annotation.dart';

part 'choose_station_address_model.freezed.dart';
part 'choose_station_address_model.g.dart';

@freezed
class ChooseStationAddressModel with _$ChooseStationAddressModel{
  const factory ChooseStationAddressModel({
    String ? address,
    double ? latitude,
    double ? longitude,
  }) = _ChooseStationAddressModel;

  factory ChooseStationAddressModel.fromJson(Map<String, dynamic> json) =>
      _$ChooseStationAddressModelFromJson(json);

}
