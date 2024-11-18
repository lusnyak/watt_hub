import 'package:flutter/material.dart';
import 'package:watt_hub/config/config.dart';
import 'package:watt_hub/data/fake_data/connectors_data/connectors_data.dart';
import 'package:watt_hub/presentation/screens/detail/bloc/detail_bloc.dart';
import 'package:watt_hub/utils/extensions/date_time_formatting_extension.dart';
import 'package:watt_hub/utils/helpers/helpers.dart';
import 'package:watt_hub_uikit/watt_hub_uikit.dart';
import '../../../domain/models/connector_type/connector_type_model.dart';

@RoutePage()
class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<DetailBloc>()..add(const DetailEvent.loadDetail()),
      child: const _DetailView(),
    );
  }
}

class _DetailView extends StatelessWidget {
  const _DetailView();

  @override
  Widget build(BuildContext context) {
    TimeOfDay time = const TimeOfDay(hour: 18, minute: 00);
    return Scaffold(
      appBar: AppBar(
        title: Text("Enter Detail", style: body18SemiBoldTextStyle),
        centerTitle: true,
      ),
      body: SafeArea(
        child: BlocConsumer<DetailBloc, DetailState>(
          listener: (context, state) {},
          builder: (context, state) {
            final (
              selectedDay,
              selectedTime,
              selectedDuration,
              selectedConnectorType
            ) = state.maybeWhen(
              orElse: () {
                return (null, null, null, null);
              },
              loaded: (selectedDay, selectedTime, selectedDuration,
                  selectedConnectorType, connectorTypes) {
                return (
                  selectedDay,
                  selectedTime,
                  selectedDuration,
                  selectedConnectorType,
                );
              },
            );

            final loading =
                state.maybeWhen(orElse: () => false, loading: () => true);

            if (loading) return const WHCircularSpin().toCenter();

            return SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    "Select Date",
                    style: body16RegularTextStyle,
                  ),
                  WHCalendar(
                    selectedDate: selectedDay,
                    onDaySelected: (selectedDate) {
                      context
                          .read<DetailBloc>()
                          .add(DetailEvent.daySelected(selectedDate));
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
                          final selectedTime = newDate.toDate().formattedTime();
                          context
                              .read<DetailBloc>()
                              .add(DetailEvent.timeSelected(selectedTime));
                        }
                      });
                    },
                  ),
                  WhDropDownButton<int>(
                    hintText: 'Select Charging Duration',
                    value: selectedDuration,
                    items: getDurationList(),
                    itemLabel: (int el) => el.toFormatHMString(),
                    onChanged: (value) {
                      context
                          .read<DetailBloc>()
                          .add(DetailEvent.durationSelected(value!));
                    },
                  ),
                  WhDropDownButton<ConnectorTypeModel>(
                    hintText: "Select Connector Type Model",
                    value: selectedConnectorType,
                    items: connectorsData
                        .map((e) => ConnectorTypeModel.fromJson(e))
                        .toList(),
                    itemLabel: (connector) => connector.title ?? "",
                    onChanged: (value) {
                      context
                          .read<DetailBloc>()
                          .add(DetailEvent.connectorTypeSelected(value!));
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
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
