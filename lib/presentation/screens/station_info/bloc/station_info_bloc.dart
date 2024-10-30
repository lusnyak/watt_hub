import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:watt_hub/config/config.dart';
import 'package:watt_hub/data/fake_data/connectors_data/connectors_data.dart';
import 'package:watt_hub/domain/models/connector_type/connector_type_model.dart';

part 'station_info_bloc.freezed.dart';
part 'station_info_event.dart';
part 'station_info_state.dart';

@injectable
class StationInfoBloc extends Bloc<StationInfoEvent, StationInfoState> {
  StationInfoBloc()
      : super(
          const StationInfoState(),
        ) {

    on<_ChangeCarouselIndexEvent>(

      (event, emit) {
        emit(
          state.copyWith(activeCarouselIndex: event.index),
        );
      },
    );


    on<_LoadConnectorsEvent>(

      (event, emit) {
        final connectors = connectorsData
            .map(
              (connectorJson) => ConnectorTypeModel.fromJson(connectorJson),
            )
            .toList();
        emit(
          state.copyWith(connectors: connectors),
        );
      },
    );
  }
}
