import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:watt_hub/config/locator/service_locator.dart';
import 'package:watt_hub/config/routes/app_router.dart';
import 'package:watt_hub/data/local/profile/profile_data.dart';
import 'package:watt_hub/presentation/screens/profile/bloc/profile_bloc.dart';
import 'package:watt_hub/presentation/screens/profile/sub_widget/car_info.dart';
import 'package:watt_hub/presentation/screens/profile/sub_widget/conditional_expansion_tile.dart';
import 'package:watt_hub/presentation/screens/profile/sub_widget/profile_menu_divider.dart';
import 'package:watt_hub/presentation/screens/profile/sub_widget/profile_menu_item.dart';
import 'package:watt_hub/presentation/screens/profile/sub_widget/station_info.dart';
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
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              "Account",
              textAlign: TextAlign.start,
              style: TextStyle(
                  fontSize: 22.0,
                  color: WattHubColors.darkMoodColor,
                  fontWeight: FontWeight.bold),
            ).paddingLTRB(20, 80, 20, 20),
            ListTile(
              splashColor: WattHubColors.primaryLightGreenColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(14)),
              contentPadding: const EdgeInsets.symmetric(vertical: 20),
              onTap: () {
                AutoRouter.of(context).push(const ProfileDetailRoute());
              },
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(profileData.fullName,
                      style: const TextStyle(
                        fontSize: 20,
                      )),
                  12.heightBox,
                  Text(profileData.phone,
                      style: const TextStyle(
                          fontSize: 12, color: WattHubColors.darkMoodColor)),
                ],
              ),
              horizontalTitleGap: 20,
              dense: true,
              visualDensity: const VisualDensity(vertical: 4, horizontal: 4),
              leading: SizedBox(
                width: 80,
                height: 80,
                child: ClipRRect(
                  borderRadius:
                      BorderRadius.circular(40), // Makes the image round
                  child: Image.asset(
                    profileData.imageUrl,
                    width: 80,
                    height: 80,
                    fit: BoxFit.cover, // Ensures the image fills the container
                  ),
                ),
              ),
              trailing: const Icon(
                Icons.chevron_right_outlined,
                size: 40,
              ),
            ),
            const ProfileMenuDivider(),
            const ConditionalExpansionTile(
              title: 'My Car',
              iconLeading: Icons.local_taxi_sharp,
              children: [CarInfo()],
            ),
            const ConditionalExpansionTile(
              title: "My Station",
              iconLeading: Icons.charging_station_outlined,
              children: [StationInfo()],
            ),
            const ProfileMenuDivider(),
            ProfileMenuItem(
              title: 'Help Center',
              iconLeading: Icons.sticky_note_2_outlined,
              onTap: () => {},
              iconTrailing: Icons.chevron_right_outlined,
            ),
            ProfileMenuItem(
              title: 'Privacy Policy',
              iconLeading: Icons.lock_outline_sharp,
              onTap: () => {},
              iconTrailing: Icons.chevron_right_outlined,
            ),
            ProfileMenuItem(
              title: 'About WattHub',
              iconLeading: Icons.info_outlined,
              onTap: () => {},
              iconTrailing: Icons.chevron_right_outlined,
            ),
            ProfileMenuItem(
              title: 'Logout',
              iconLeading: Icons.logout_rounded,
              onTap: () => {},
              colorTile: WattHubColors.redColor,
            ),
          ],
        ).paddingAll(24.0),
      ),
    );
  }
}
