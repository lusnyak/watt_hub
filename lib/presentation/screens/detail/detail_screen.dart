import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:watt_hub/data/fake_data/connectors_data/connectors_data.dart';
import 'package:watt_hub/presentation/screens/detail/bloc/detail_bloc.dart';
import 'package:watt_hub_uikit/watt_hub_uikit.dart';

import '../../../domain/models/connector_type/connector_type_model.dart';

@RoutePage()
class DetailScreen extends StatefulWidget {
  const DetailScreen({super.key});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  TimeOfDay time = const TimeOfDay(hour: 18, minute: 00);
  TimeOfDay duration = const TimeOfDay(hour: 0, minute: 60);

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => DetailBloc(),
      child: Scaffold(
        appBar: AppBar(
          title: Text("Enter Detail", style: body18SemiBoldTextStyle),
          centerTitle: true,
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.arrow_back),
          ),
        ),
        body: SafeArea(
          child: BlocBuilder<DetailBloc, DetailState>(
            builder: (context, state) {
              return SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      "Select Date",
                      style: body16RegularTextStyle,
                    ),
                    WHCalendar(
                      selectedDate: state.selectedDay,
                      onDaySelected: (selectedDate) {
                        context
                            .read<DetailBloc>()
                            .add(DaySelected(selectedDate));
                      },
                      firstDate: DateTime(2020),
                      lastDate: DateTime(2030),
                    ).paddingSymmetric(vertical: 8.w),
                    WHTextField.singleLine(
                      label: 'Select Arrival Time',
                      hintText: 'Select Arrival Time',
                      controller: context.read<DetailBloc>().timeController,
                      readonly: true,
                      onTap: () {
                        WhDatePicker.of(context)
                            .showTimePicker(
                          initialTime: time,
                        )
                            .then((newDate) {
                          if (newDate != null) {
                            final selectedTime =
                                newDate.toDate().formattedTime();
                            context
                                .read<DetailBloc>()
                                .add(TimeSelected(selectedTime));
                          }
                        });
                      },
                    ),
                    WhDropDownButton<String>(
                      hintText: 'Select Charging Duration',
                      value: state.selectedDuration.isEmpty
                          ? null
                          : state.selectedDuration,
                      items: getDurationList(15, 5),
                      itemLabel: (String el) => el,
                      onChanged: (value) {
                        context
                            .read<DetailBloc>()
                            .add(DurationSelected(value!));
                      },
                    ),
                    WhDropDownButton<ConnectorTypeModel>(
                      hintText: "Select Connector Type Model",
                      value: state.selectedConnectorType,
                      items: connectorsData
                          .map(
                            (e) => ConnectorTypeModel.fromJson(e),
                          )
                          .toList(),
                      itemLabel: (connector) => connector.title ?? "",
                      onChanged: (value) {
                        context
                            .read<DetailBloc>()
                            .add(ConnectorTypeSelected(value!));
                      },
                    ),
                    WHTextField.multiLine(
                      label: 'Comment',
                      hintText: 'Comment',
                      maxLines: 5,
                      controller: context.read<DetailBloc>().commentController,
                      onChanged: (value) {},
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter comment';
                        }
                        return null;
                      },
                    ),
                    WHElevatedButton.primary(
                      onPressed: () {},
                      title: 'Continue',
                    ), // Remove the expanded() here
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }

  List<String> getDurationList(int minute, int hour) {
    List<String> durationList = [];
    for (int i = minute; i <= hour * 60; i += 15) {
      String hour = i ~/ 60 == 0 ? '' : '${i ~/ 60} h';
      String minute = i % 60 == 0 ? '' : '${i % 60} min';
      durationList.add("$hour $minute");
    }

    return durationList;
  }
}
