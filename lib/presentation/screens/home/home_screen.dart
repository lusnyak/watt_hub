import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:watt_hub/config/routes/app_router.dart';
import 'package:watt_hub/config/locator/service_locator.dart';
import 'package:watt_hub/presentation/screens/home/bloc/home_bloc.dart';
import 'package:watt_hub/presentation/screens/home/widgets/map_container.dart';
import 'package:watt_hub/presentation/widgets/stations_list.dart';
import 'package:watt_hub_uikit/watt_hub_uikit.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<HomeBloc>()..add(const HomeEvent.loadStationEvent()),
      child: const _HomeView(),
    );
  }
}

class _HomeView extends StatelessWidget {
  const _HomeView();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: WattHubColors.transparentColor,
      extendBodyBehindAppBar: true,
      appBar: _appBar(context),
      body: _homeContent(),
      floatingActionButton: _homeFooter(),
    );
  }

  BlocBuilder<HomeBloc, HomeState> _homeFooter() {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        final isList = state is LoadedState ? state.isList : true;
        final currentLocation =
            state is LoadedState ? state.currentLocation : null;
        return Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            if (state.maybeMap(
              loaded: (_) => isList,
              orElse: () => false,
            ))
              FloatingActionButton(
                heroTag: "location",
                onPressed: () {
                  context
                      .read<HomeBloc>()
                      .add(HomeEvent.centerLocationEvent(currentLocation));
                },
                child: const Icon(Icons.my_location_outlined),
              ),
            20.widthBox,
            FloatingActionButton(
              heroTag: "list",
              onPressed: () {
                context
                    .read<HomeBloc>()
                    .add(HomeEvent.toggleViewEvent(currentLocation));
              },
              child: Icon(
                isList ? Icons.list : Icons.map,
              ),
            ),
          ],
        );
      },
    );
  }

  SafeArea _homeContent() {
    return SafeArea(
      top: false,
      child: BlocBuilder<HomeBloc, HomeState>(
        builder: (context, state) {
          return state.when(
            initial: () => const SizedBox.shrink(),
            loading: () => const Center(child: WHCircularSpin()),
            error: (message) => Center(child: Text(message)),
            viewChanged: (isList) => nil,
            loaded: (
              stations,
              isList,
              currentLocation,
              isMapReady,
            ) {
              debugPrint('${stations.runtimeType} stations.runtimeType');
              return isList
                  ? MapContainer(
                      chargingStations: stations,
                      currentLocation: currentLocation,
                    )
                  : StationsList(
                      dataList: stations,
                      onTap: (stationItem) {
                        context.read<HomeBloc>().add(
                              HomeEvent.centerOnStation(
                                  stationItem, currentLocation),
                            );
                      },
                    );
            },
          );
        },
      ),
    );
  }

  AppBar _appBar(BuildContext context) {
    return AppBar(
      leading: nil,
      actions: [
        WHIconButton.primary(
          icon: const Icon(Icons.filter_alt),
          onPressed: () => context.router.push(const FilterRoute()),
        ).paddingOnly(right: 20.w),
      ],
    );
  }
}
