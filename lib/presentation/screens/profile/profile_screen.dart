import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:watt_hub/config/locator/service_locator.dart';
import 'package:watt_hub/config/routes/app_router.dart';
import 'package:watt_hub/presentation/screens/profile/bloc/profile_bloc.dart';
import 'package:watt_hub/presentation/screens/profile/sub_widget/car_info_list.dart';
import 'package:watt_hub/presentation/screens/profile/sub_widget/conditional_expansion_tile.dart';
import 'package:watt_hub/presentation/screens/profile/sub_widget/profile_menu_divider.dart';
import 'package:watt_hub/presentation/screens/profile/sub_widget/profile_menu_item.dart';
import 'package:watt_hub/presentation/screens/profile/sub_widget/station_info.dart';
import 'package:watt_hub/utils/extensions/localization_extensions.dart';
import 'package:watt_hub_uikit/watt_hub_uikit.dart';

@RoutePage()
class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<ProfileBloc>()..add(const LoadProfileEvent()),
      child: const _ProfileView(),
    );
  }
}

class _ProfileView extends StatefulWidget {
  const _ProfileView();

  @override
  State<_ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<_ProfileView> {
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
              stationData,
              carData,
            ) {
              return SafeArea(
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        context.localized.account,
                        textAlign: TextAlign.start,
                        style: body24SemiBoldTextStyle,
                      ).paddingLTRB(0.sp, 20.sp, 20.sp, 20.sp),
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
                        leading: ClipRRect(
                          borderRadius:
                              roundedBorder50, // Makes the image round
                          child: Image.asset(
                            WattHubAssets.images.profileImage
                                .keyName, //Default, Now user model don't have image property
                            width: 60.w,
                            // Sets the width of the image
                            height: 60.h,
                            // Sets the height of the image (optional, to make it square)
                            fit: BoxFit
                                .cover, // Ensures the image fills the container
                          ),
                        ),
                        trailing: Icon(
                          Icons.chevron_right_outlined,
                          size: 40.sp,
                        ),
                      ),
                      const ProfileMenuDivider(),
                      ConditionalExpansionTile(
                          title: context.localized.myCar,
                          iconLeading: Icons.local_taxi_sharp,
                          children: [
                            if (carData != null && carData.isNotEmpty)
                              CarsInfoList(
                                carsData: carData,
                              ),
                          ],
                          onTap: () {
                            if (carData!.isEmpty) {
                              AutoRouter.of(context).push(const AddCarRoute());
                            }
                          }),
                      ConditionalExpansionTile(
                        title: context.localized.myStation,
                        iconLeading: Icons.charging_station_outlined,
                        children: [
                          StationInfo(
                            stationData: stationData,
                          )
                        ],
                      ),
                      const ProfileMenuDivider(),
                      ProfileMenuItem(
                        title: context.localized.helpCenter,
                        iconLeading: Icons.sticky_note_2_outlined,
                        onTap: () => {},
                        iconTrailing: Icons.chevron_right_outlined,
                      ),
                      ProfileMenuItem(
                        title: context.localized.privacyPolicy,
                        iconLeading: Icons.lock_outline_sharp,
                        onTap: () => {},
                        iconTrailing: Icons.chevron_right_outlined,
                      ),
                      ProfileMenuItem(
                        title: context.localized.about,
                        iconLeading: Icons.info_outlined,
                        onTap: () => {},
                        iconTrailing: Icons.chevron_right_outlined,
                      ),
                      ProfileMenuItem(
                        title: context.localized.logout,
                        iconLeading: Icons.logout_rounded,
                        onTap: () => {},
                        colorTile: WattHubColors.redColor,
                      ),
                    ],
                  ).paddingAll(24.0.sp),
                ),
              );
            });
      }),
    );
  }
}
