part of 'station_info_bloc.dart';

@freezed
class StationInfoState with _$StationInfoState {
  const factory StationInfoState({
    @Default(0) int activeCarouselIndex,
    @Default([]) List<ConnectorTypeModel> connectors,
  }) = _StationInfoState;
}
