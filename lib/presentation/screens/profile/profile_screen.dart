import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:watt_hub/config/locator/service_locator.dart';
import 'package:watt_hub/config/routes/app_router.dart';
import 'package:watt_hub/data/local/filter_storage/filter_storage.dart';
import 'package:watt_hub/data/local/token_storage/token_storage.dart';
import 'package:watt_hub/domain/models/car_model/car_model.dart';
import 'package:watt_hub/domain/models/station/station_model.dart';
import 'package:watt_hub/domain/models/user/user_model.dart';
import 'package:watt_hub/presentation/screens/profile/bloc/profile_bloc.dart';
import 'package:watt_hub/presentation/screens/profile/widgets/conditional_expansion_tile.dart';
import 'package:watt_hub/presentation/screens/profile/widgets/profile_menu_item.dart';
import 'package:watt_hub/presentation/widgets/empty_widget.dart';
import 'package:watt_hub/utils/constants/constants.dart';
import 'package:watt_hub/utils/extensions/localization_extensions.dart';
import 'package:watt_hub/utils/helpers/helpers.dart';
import 'package:watt_hub_uikit/watt_hub_uikit.dart';

@RoutePage()
class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          getIt<ProfileBloc>()..add(const ProfileEvent.loadProfile()),
      child: const _ProfileView(),
    );
  }
}

class _ProfileView extends StatelessWidget {
  const _ProfileView();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<ProfileBloc, ProfileState>(builder: (context, state) {
        return state.when(
            initial: () => const SizedBox.shrink(),
            loading: () => const WHCircularSpin().toCenter(),
            error: (message) => Center(child: Text('Error: $message')),
            loaded: (
              profileData,
              stationsData,
              carsData,
            ) {
              return SafeArea(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        context.localized.account,
                        textAlign: TextAlign.start,
                        style: body24SemiBoldTextStyle,
                      ).paddingLTRB(0, 20.h, 20.w, 20.h),
                      _infoSection(context, profileData),
                      const Divider(),
                      _carSection(context, carsData),
                      _stationSection(context, stationsData),
                      const Divider(),
                      ProfileMenuItem(
                        title: context.localized.helpCenter,
                        iconLeading: Icons.sticky_note_2_outlined,
                        onTap: () {},
                        iconTrailing: Icons.chevron_right_outlined,
                      ),
                      ProfileMenuItem(
                        title: context.localized.privacyPolicy,
                        iconLeading: Icons.lock_outline_sharp,
                        onTap: () async {
                          await launchURL(AppConstants.privacyPolicyUrl);
                        },
                        iconTrailing: Icons.chevron_right_outlined,
                      ),
                      ProfileMenuItem(
                        title: context.localized.about,
                        iconLeading: Icons.info_outlined,
                        onTap: () {},
                        iconTrailing: Icons.chevron_right_outlined,
                      ),
                      ProfileMenuItem(
                        title: context.localized.logout,
                        iconLeading: Icons.logout_rounded,
                        onTap: () {},

                        /// TODO: -- implement logout - Marieta
                        colorTile: WattHubColors.redColor,
                      ),
                    ],
                  ).paddingAll(20.r),
                ),
              );
            });
      }),
    );
  }
}
