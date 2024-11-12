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
      appBar: AppBar(
        leading: null,
        actions: [
          WHIconButton.primary(
            icon: const Icon(Icons.filter_alt),
            onPressed: () => context.router.push(const FilterRoute()),
          ).paddingOnly(right: 20.w),
        ],
      ),
      body: SafeArea(
        top: false,
        child: BlocConsumer<HomeBloc, HomeState>(
          listener: (context, state) {
            if (state is ErrorState) {
              context.showSnackBar(
                  message: state.message,
                  duration: const Duration(seconds: 45));
            }
          },
          builder: (context, state) {
            return state.maybeWhen(
              orElse: () => nil,
              loading: () => const WHCircularSpin().toCenter(),
              loaded: (
                stations,
                isList,
                currentLocation,
                isMapReady,
              ) {
                return isList
                    ? MapContainer(
                        chargingStations: stations,
                        currentLocation: currentLocation,
                      )
                    : StationsList(
                        stationsList: stations,
                        currentLocation: currentLocation,
                      );
              },
            );
          },
        ),
      ),
      floatingActionButton: BlocBuilder<HomeBloc, HomeState>(
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
      ),
    );
  }
}
