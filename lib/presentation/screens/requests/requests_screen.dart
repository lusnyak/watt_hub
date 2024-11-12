import 'package:flutter/cupertino.dart';
import 'package:watt_hub/config/config.dart';
import 'package:watt_hub/domain/enums/enums.dart';
import 'package:watt_hub/presentation/screens/requests/bloc/requests_bloc.dart';
import 'package:watt_hub/presentation/screens/requests/widgets/requests_group_list.dart';
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
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _SegmentedControl(),
            20.h.heightBox,
            _RequestsContent().expanded(),
          ],
        ),
      ),
    );
  }
}

class _SegmentedControl extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RequestsBloc, RequestsState>(
      buildWhen: (previous, current) =>
          current is LoadedState || current is LoadingState,
      builder: (context, state) {
        final selectedOption = state.maybeMap(
          loaded: (state) => state.selectedOption,
          loading: (state) => state.selectedOption,
          orElse: () => SegmentOption.my,
        );

        return CupertinoSlidingSegmentedControl<SegmentOption>(
          groupValue: selectedOption,
          onValueChanged: (value) {
            if (value != null) {
              context
                  .read<RequestsBloc>()
                  .add(RequestsEvent.loadMyRequests(value));
            }
          },
          children: <SegmentOption, Widget>{
            SegmentOption.my:
                Text(context.localized.my).paddingSymmetric(vertical: 8.h),
            SegmentOption.station:
                Text(context.localized.station).paddingSymmetric(vertical: 8.h),
          },
        ).paddingOnly(top: 20.h);
      },
    );
  }
}

class _RequestsContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RequestsBloc, RequestsState>(
      builder: (context, state) {
        return state.when(
          initial: () => nil,
          loading: (segmentOption) => const WHCircularSpin().toCenter(),
          error: (message) => Center(child: Text(message)),
          loaded: (selectedOption, myRequests, stationRequests) {
            return selectedOption == SegmentOption.my
                ? RequestsGroupList(myRequestsData: myRequests)
                : RequestsGroupList(stationRequests: stationRequests);
          },
        );
      },
    );
  }
}
