import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:watt_hub/config/routes/app_router.dart';
import 'package:watt_hub/config/locator/service_locator.dart';
import 'package:watt_hub/presentation/screens/home/bloc/home_bloc.dart';
import 'package:watt_hub/presentation/screens/home/widgets/map_container.dart';
import 'package:watt_hub/presentation/screens/home/widgets/stations_list.dart';
import 'package:watt_hub_uikit/watt_hub_uikit.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<HomeBloc>()..add(const LoadStation()),
      child: const _HomeView(),
    );
  }
}

class _HomeView extends StatelessWidget {
  const _HomeView();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.transparent,
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          systemOverlayStyle: const SystemUiOverlayStyle(
            statusBarColor: Colors.transparent,
            statusBarIconBrightness: Brightness.dark,
          ),
          actions: [
            WHIconButton.primary(
              icon: const Icon(Icons.filter_alt),
              onPressed: () => context.router.push(const FilterRoute()),
            ).paddingOnly(right: 20.w),
          ],
        ),
        body: SafeArea(
          top: false,
          child: BlocBuilder<HomeBloc, HomeState>(
            builder: (context, state) {
              return state.when(
                initial: () => const SizedBox.shrink(),
                loading: () => const Center(child: CircularProgressIndicator()),
                error: (message) => Center(child: Text(message)),
                viewChanged: (isList) => nil,
                loaded: (stations, isList) {
                  return isList
                      ? MapContainer(
                          chargingStations: stations,
                        )
                      : StationsList(
                          stationsList: stations,
                        );
                },
              );
            },
          ),
        ),
        floatingActionButton: BlocBuilder<HomeBloc, HomeState>(
          builder: (context, state) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                if (state.maybeMap(
                  loaded: (_) => context.read<HomeBloc>().isList,
                  orElse: () => false,
                ))
                  FloatingActionButton(
                    onPressed: () {
                      context.read<HomeBloc>().add(const CenterLocation());
                    },
                    child: const Icon(Icons.my_location_outlined),
                  ),
                20.widthBox,
                FloatingActionButton(
                  onPressed: () {
                    context.read<HomeBloc>().add(const ToggleView());
                  },
                  child: Icon(
                    context.read<HomeBloc>().isList ? Icons.list : Icons.map,
                  ),
                ),
              ],
            );
          },
        ));
  }
}
