import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:watt_hub/presentation/screens/add_station/bloc/add_station_bloc.dart';
import 'package:watt_hub_uikit/watt_hub_uikit.dart';

class AddStationPreviewImages extends StatelessWidget {
  const AddStationPreviewImages({super.key});

  @override
  Widget build(BuildContext context) {
    final state = context.watch<AddStationBlock>().state;
    return state.maybeWhen(
      loaded: (
        connectors,
        selectedConnectors,
        selectedList,
        selected,
        initialSelectedConnectorId,
        images,
        startTime,
        endTime,
        address,
        latitude,
        longitude,
      ) {
        if (images != null && images.isNotEmpty) {
          return SizedBox(
            height: 120.h,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: images.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  width: 100.r,
                  height: 100.r,
                  margin: const EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    image: DecorationImage(fit: BoxFit.cover, image: FileImage(images[index], ))
                  ),
                  child: InkWell(
                    child: const Icon(Icons.cancel,
                        color: Colors.red),
                    onTap: () => context
                        .read<AddStationBlock>()
                        .add(AddStationEvent.removeImage(index)),
                  ).alignAtTopRight(),
                );
              },
            ),
          );
        } else {
          return const SizedBox();
        }
      },
      orElse: () => const SizedBox(),
    );
  }
}
