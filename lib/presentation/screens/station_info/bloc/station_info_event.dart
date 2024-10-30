part of 'station_info_bloc.dart';

@freezed
class StationInfoEvent with _$StationInfoEvent {
  const factory StationInfoEvent.changeCarouselIndex(int index) =
      ChangeCarouselIndexEvent;

  const factory StationInfoEvent.loadConnectors() = LoadConnectorsEvent;
}
