import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:watt_hub_uikit/watt_hub_uikit.dart';

import '../bloc/add_station_bloc.dart';

class AddStationPreviewImages extends StatelessWidget {
  const AddStationPreviewImages({super.key});

  @override
  Widget build(BuildContext context) {
    final state = context.watch<AddStationBlock>().state;
    return state.maybeWhen(
      loaded: (connectors, ni, images, startTime, endTime,address) {
        if (images != null && images.isNotEmpty) {
          return SizedBox(
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
                        height: 100.h,
                        width: 85.w,
                        File(images[index].path),
                        fit: BoxFit.cover,
                      ),
                      Positioned(
                        top: -11,
                        right: -11,
                        child: IconButton(
                          icon: const Icon(Icons.dangerous_outlined,
                              color: Colors.red),
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
        } else {
          return const SizedBox(); // Return an empty SizedBox if there are no images
        }
      },
      orElse: () =>
      const SizedBox(), // Return an empty SizedBox in case of other states
    );
  }

}
