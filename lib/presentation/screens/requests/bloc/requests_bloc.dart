import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:watt_hub/config/config.dart';
import 'package:watt_hub/data/fake_data/orders_data/orders_data.dart';
import 'package:watt_hub/domain/enums/enums.dart';
import 'package:watt_hub/domain/models/order/order_model.dart';

part 'requests_event.dart';
part 'requests_state.dart';
part 'requests_bloc.freezed.dart';

@injectable
class RequestsBloc extends Bloc<RequestsEvent, RequestsState> {
  RequestsBloc() : super(const RequestsState.initial()) {
    on<RequestsEvent>((event, emit) {
      event.when(
        loadMyRequests: (selectedOption) {
          emit(const RequestsState.loading());
          try {
            final myRequests = ordersData
                .map((orderJson) => OrderModel.fromJson(orderJson))
                .toList();

            final stationRequests = ordersData
                .map((orderJson) => OrderModel.fromJson(orderJson))
                .toList();

            emit(RequestsState.loaded(
              myRequests: myRequests,
              stationRequests: stationRequests,
              selectedOption: selectedOption,
            ));
          } catch (e) {
            debugPrint('${e.toString()} e.toString()');
            emit(const RequestsState.error("Failed to load requests"));
          }
        },
      );
    });
  }
}
