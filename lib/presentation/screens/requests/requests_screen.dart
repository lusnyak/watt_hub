import 'package:flutter/cupertino.dart';
import 'package:watt_hub/config/config.dart';
import 'package:watt_hub/domain/enums/enums.dart';
import 'package:watt_hub/presentation/screens/requests/bloc/requests_bloc.dart';
import 'package:watt_hub/presentation/screens/requests/widgets/my_requests.dart';
import 'package:watt_hub/presentation/screens/requests/widgets/station_requests.dart';
import 'package:watt_hub/utils/extensions/extensions.dart';
import 'package:watt_hub_uikit/watt_hub_uikit.dart';

@RoutePage()
class RequestsScreen extends StatelessWidget {
  const RequestsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<RequestsBloc>()
        ..add(const RequestsEvent.loadMyRequests(SegmentOption.my)),
      child: const RequestsView(),
    );
  }
}

class RequestsView extends StatelessWidget {
  const RequestsView({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text(
          context.localized.requests,
          style: body18MediumTextStyle,
        ),
        backgroundColor: WattHubColors.whiteColor,
      ),
      child: BlocBuilder<RequestsBloc, RequestsState>(
        builder: (context, state) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              CupertinoSlidingSegmentedControl<SegmentOption>(
                groupValue: state.maybeMap(
                  loaded: (state) => state.selectedOption,
                  loading: (state) => state.selectedOption,
                  orElse: () => SegmentOption.my,
                ),
                onValueChanged: (value) {
                  if (value != null) {
                    context
                        .read<RequestsBloc>()
                        .add(RequestsEvent.loadMyRequests(value));
                  }
                },
                children: <SegmentOption, Widget>{
                  SegmentOption.my: Text(context.localized.my)
                      .paddingSymmetric(vertical: 8.h),
                  SegmentOption.station: Text(context.localized.station)
                      .paddingSymmetric(vertical: 8.h),
                },
              ).paddingOnly(top: 20.h),
              if (state is LoadingState)
                const Center(child: WHCircularSpin()).expanded()
              else
                state.maybeWhen(
                  initial: () =>
                      const Center(child: Text('Welcome to Requests!')),
                  error: (message) => Center(child: Text(message)),
                  loaded: (selectedOption, myRequests, stationRequests) =>
                      selectedOption == SegmentOption.my
                          ? MyRequests(myRequestsData: myRequests)
                          : StationRequests(stationRequests: stationRequests),
                  orElse: () => nil,
                ),
            ],
          );
        },
      ).paddingSymmetric(horizontal: 20.0),
    );
  }
}
