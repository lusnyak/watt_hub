import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:watt_hub/config/config.dart';
import 'package:watt_hub/domain/enums/enums.dart';

part 'requests_event.dart';
part 'requests_state.dart';
part 'requests_bloc.freezed.dart';

@injectable
class RequestsBloc extends Bloc<RequestsEvent, RequestsState> {
  RequestsBloc()
      : super(const RequestsState.selectedState(
            selectedOption: SegmentOption.my)) {
    on<RequestsEvent>((event, emit) {
      event.when(
        selectRequestState: (selectedOption) {
          emit(RequestsState.selectedState(selectedOption: selectedOption));
        },
      );
    });
  }
}
