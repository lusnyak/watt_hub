import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:watt_hub/config/config.dart';
import 'package:watt_hub/presentation/screens/choose_station_address/bloc/choose_station_address_bloc.dart';
import 'package:watt_hub/utils/extensions/extensions.dart';
import 'package:watt_hub_uikit/watt_hub_uikit.dart';

import '../../../domain/models/choose_station_address/choose_station_address_model.dart';

@RoutePage()
class ChooseStationAddressScreen extends StatelessWidget {
  const ChooseStationAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) {
        final bloc = getIt<ChooseStationAddressBloc>();
        bloc.add(const ChooseStationAddressEvent.started());
        // bloc.add(const ChooseStationAddressEvent.initializeLocation());
        return bloc;
      },
      child: const _ChooseStationAddressScreenBody(),
    );
  }
}

// class _ChooseStationAddressScreenBody extends StatelessWidget {
//   const _ChooseStationAddressScreenBody();
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text(context.localized.flutterMap)),
//
//       /// TODO: Vlad - poxarinel bloc listerov, ogtagorcel BlocConsumer - done
//       body: BlocConsumer<ChooseStationAddressBloc, ChooseStationAddressState>(
//         listener: (context, state) {
//           state.maybeWhen(
//             loaded: (address, location) {
//               if (address != null) {
//                 /// TODO: - darcnel model - done
//                 final result = ChooseStationAddressModel(
//                   address: address,
//                   latitude: location?.latitude,
//                   longitude: location?.longitude,
//                 );
//                 if (context.mounted) {
//                   context.router.maybePop(result.toJson());
//                 }
//               }
//             },
//             error: (message) {
//               if (context.mounted) {
//                 context.showSnackBar(message: "Error: $message");
//               }
//             },
//             orElse: () {},
//           );
//         },
//         builder: (context, state) {
//           return state.maybeWhen(
//             /// TODO: - Vlad - miavorel kam naxnakan ekran cuyc tal
//             loading: () => const Center(child: WHCircularSpin()),
//             error: (message) =>
//                 Center(child: Text('${context.localized.error}: $message')),
//             loaded: (address, location) {
//               debugPrint("$location location");
//               return FlutterMap(
//                 options: MapOptions(
//                   onTap: (tapPosition, point) {
//                     context.read<ChooseStationAddressBloc>().add(
//                           ChooseStationAddressEvent.locationTapped(point),
//                         );
//                   },
//                   initialCenter: location ?? const LatLng(40.7942, 43.84528),
//                   initialZoom: 18.0,
//                 ),
//                 children: [
//                   TileLayer(
//                     urlTemplate:
//                         'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
//                     userAgentPackageName: 'com.example.app',
//                   ),
//
//                   /// TODO: -  poxel layery chihst layerov  (MarkerLayer)- done
//                   MarkerLayer(
//                     markers: location != null
//                         ? [
//                             Marker(
//                               width: 80.w,
//                               height: 80.h,
//                               // point: context
//                               //     .read<ChooseStationAddressBloc>()
//                               //     .clickedLocation!,
//                               point: location,
//                               child: Icon(
//                                 Icons.location_on_outlined,
//                                 size: 56.r,
//                                 color: WattHubColors.primaryGreenColor,
//                               ),
//                             ),
//                           ]
//                         : [],
//                   )
//                 ],
//               );
//             },
//             orElse: () => nil,
//           );
//         },
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () async {
//           final bloc = context.read<ChooseStationAddressBloc>();
//           final state = bloc.state;
//           state.maybeWhen(
//             loaded: (address, location) async {
//               if (location != null) {
//                 bloc.add(ChooseStationAddressEvent.addressRequested(
//                   location.latitude,
//                   location.longitude,
//                 ));
//                 context.showSnackBar(message: "Fetching address...");
//               } else {
//                 context.showSnackBar(
//                     message: "No location selected. Please tap on the map.");
//               }
//             },
//             orElse: () {
//               context.showSnackBar(
//                   message: "No location available. Please try again.");
//             },
//           );
//         },
//         child: const Icon(Icons.check),
//       ),
//     );
//   }
// }
class _ChooseStationAddressScreenBody extends StatelessWidget {
  const _ChooseStationAddressScreenBody();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(context.localized.flutterMap)),
      /// TODO: Vlad - poxarinel bloc listerov, ogtagorcel BlocConsumer - done

      body: BlocConsumer<ChooseStationAddressBloc, ChooseStationAddressState>(
        listener: (context, state) {
          state.maybeWhen(
            loaded: (address, location) {
              if (address != null && location != null) {
                /// TODO: - darcnel model - done
                final result = ChooseStationAddressModel(
                  address: address,
                  latitude: location.latitude,
                  longitude: location.longitude,
                );
                if (context.mounted) {
                  context.router.maybePop(result.toJson());
                }
              }
            },
            error: (message) {
              if (context.mounted) {
                context.showSnackBar(message: "Error: $message");
              }
            },
            orElse: () {},
          );
        },
        builder: (context, state) {
          /// TODO: - Vlad - miavorel kam naxnakan ekran cuyc tal -done
          return state.maybeWhen(
            loading: () => const Center(child: WHCircularSpin()),
            error: (message) =>
                Center(child: Text('${context.localized.error}: $message')),
            loaded: (address, location) {
              debugPrint("$location location");
              return FlutterMap(
                options: MapOptions(
                  onTap: (tapPosition, point) {
                    context.read<ChooseStationAddressBloc>().add(
                      ChooseStationAddressEvent.locationTapped(point),
                    );
                  },
                  initialCenter: location ?? const LatLng(40.7942, 43.84528),
                  initialZoom: 18.0,
                ),
                children: [
                  TileLayer(
                    urlTemplate:
                    'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                    userAgentPackageName: 'com.example.app',
                  ),
                  /// TODO: -  poxel layery chihst layerov  (MarkerLayer)- done
                  MarkerLayer(
                    markers: location != null
                        ? [
                      Marker(
                        width: 80.w,
                        height: 80.h,
                        point: location,
                        child: Icon(
                          Icons.location_on_outlined,
                          size: 56.r,
                          color: WattHubColors.primaryGreenColor,
                        ),
                      ),
                    ]
                        : [],
                  )
                ],
              );
            },
            orElse: () => const SizedBox.shrink(),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final bloc = context.read<ChooseStationAddressBloc>();
          final state = bloc.state;
          state.maybeWhen(
            loaded: (address, location) async {
              if (location != null) {
                bloc.add(ChooseStationAddressEvent.addressRequested(
                  location.latitude,
                  location.longitude,
                ));
                context.showSnackBar(message: "Fetching address...");
              } else {
                context.showSnackBar(
                    message: "No location selected. Please tap on the map.");
              }
            },
            orElse: () {
              context.showSnackBar(
                  message: "No location available. Please try again.");
            },
          );
        },
        child: const Icon(Icons.check),
      ),
    );
  }
}
