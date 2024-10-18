import 'dart:io';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:watt_hub/config/routes/app_router.dart';

@RoutePage()
class AddStationScreen extends StatelessWidget {
  const AddStationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) =>
          getIt<AddStationBlock>()..add(const AddStationEvent.started()),
      child: const AddStationView(),
    );
  }
}

class AddStationView extends StatelessWidget {
  const AddStationView({super.key});

  Widget _previewImages(BuildContext context) {
    final state = context.watch<AddStationBlock>().state;
    return state.maybeWhen(
      loaded: (images) {
        if (images != null && images.isNotEmpty) {
          return Container(
            height: 100,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: images.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Stack(
                    children: [
                      Image.file(
                        File(images[index].path),
                        fit: BoxFit.cover,
                        height: 100,
                        width: 85,
                      ),
                      Positioned(
                        top: -20,
                        right: -20,
                        child: IconButton(
                          icon: const Icon(Icons.dangerous_outlined,
                              color: WattHubColors.primaryGreenColor),
                          onPressed: () => context
                              .read<AddStationBlock>()
                              .add(AddStationEvent.removeImage(index)),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          );
        }
        return const Text('No images selected.');
      },
      orElse: () => const Text('No images selected.'),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => AutoRouter.of(context).push(const ProfileRoute()),
          icon: const Icon(Icons.arrow_back),
        ),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              "Add Station Screen!",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 24.0,
                color: Colors.blue,
              ),
            ),
            20.heightBox,
            ElevatedButton(
                onPressed: () => AutoRouter.of(context)
                    .push(const ChooseStationAddressRoute()),
                child: const Text(
                  "Choose Station Address",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.blue,
                  ),
                ))
          ],
        ),
      ).paddingAll(20.0),
    );
  }
}
