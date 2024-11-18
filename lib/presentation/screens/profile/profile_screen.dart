import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:watt_hub/config/locator/service_locator.dart';
import 'package:watt_hub/config/routes/app_router.dart';
import 'package:watt_hub/presentation/screens/profile/bloc/profile_bloc.dart';
import 'package:watt_hub/presentation/screens/profile/sub_widget/car_info_list.dart';
import 'package:watt_hub/presentation/screens/profile/sub_widget/conditional_expansion_tile.dart';
import 'package:watt_hub/presentation/screens/profile/sub_widget/profile_menu_item.dart';
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
            loading: () => const Center(child: WHCircularSpin()),
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
                      ListTile(
                        splashColor: WattHubColors.primaryLightGreenColor,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(14)),
                        contentPadding: paddingV20,
                        onTap: () {
                          AutoRouter.of(context)
                              .push(const ProfileDetailRoute());
                        },
                        title: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(profileData.fullName ?? '',
                                style: body16SemiBoldTextStyle),
                            12.h.heightBox,
                            Text(profileData.phoneNumber ?? '',
                                style: body14RegularTextStyle),
                          ],
                        ),
                        horizontalTitleGap: 20,
                        dense: true,
                        visualDensity:
                            const VisualDensity(vertical: 4, horizontal: 4),
                        leading: Container(
                          width: 60.r,
                          height: 60.r,
                          decoration: const BoxDecoration(
                            color: WattHubColors.primaryLightGreenColor1,
                            // image: DecorationImage(image: AssetImage(WattHubAssets.images.profileImage.keyName), fit: BoxFit.cover),
                            shape: BoxShape.circle,
                          ),
                          child: Icon(
                            Icons.person,
                            color: WattHubColors.primaryGreenColor,
                            size: 32.r,
                          ),
                        ),
                        trailing: Icon(
                          Icons.chevron_right_outlined,
                          size: 40.sp,
                        ),
                      ),
                      const Divider(),
                      ConditionalExpansionTile(
                          title: context.localized.myCar,
                          iconLeading: Icons.local_taxi_sharp,
                          children: [
                            if (carsData != null && carsData.isNotEmpty)
                              CarsInfoList(
                                carsData: carsData,
                              ),
                          ],
                          onTap: () {
                            if (carsData!.isEmpty) {
                              AutoRouter.of(context).push(const AddCarRoute());
                            }
                          }),
                      ConditionalExpansionTile(
                          title: context.localized.myStation,
                          iconLeading: Icons.charging_station_outlined,
                          children: [
                            if (stationsData != null && stationsData.isNotEmpty)
                              // StationInfoList(
                              //   stationsData: stationsData,
                              // ),
                              StationsList.slidable(stationsList: stationsData),
                          ],
                          onTap: () {
                            if (stationsData!.isEmpty) {
                              AutoRouter.of(context)
                                  .push(const AddStationRoute());
                            }
                          }),
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
