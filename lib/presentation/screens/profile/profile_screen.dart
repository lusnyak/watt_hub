import 'package:auto_route/auto_route.dart';
import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:watt_hub/config/routes/app_router.dart';
import 'package:watt_hub/presentation/screens/profile/sub_widget/profile_menu_divider.dart';
import 'package:watt_hub/presentation/screens/profile/sub_widget/profile_menu_item.dart';
import 'package:watt_hub_uikit/watt_hub_uikit.dart';

@RoutePage()
class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
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
              onTap: () => {},
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Andrew Ainsley',
                      style: TextStyle(
                        fontSize: 20,
                      )),
                  12.heightBox,
                  const Text('+1 111 467 378 399',
                      style: TextStyle(
                          fontSize: 12, color: WattHubColors.darkMoodColor)),
                ],
              ),
              horizontalTitleGap: 20,
              dense: true,
              visualDensity: const VisualDensity(vertical: 4, horizontal: 4),
              leading: ClipRRect(
                borderRadius:
                    BorderRadius.circular(100), // Makes the image round
                child: Image.network(
                  'https://i.pinimg.com/736x/4b/0d/8a/4b0d8a3809bff41e4f010fc5add5effe.jpg',
                  width: 80, // Sets the width of the image
                  height:
                      80, // Sets the height of the image (optional, to make it square)
                  fit: BoxFit.cover, // Ensures the image fills the container
                ),
              ),
              trailing: const Icon(
                Icons.chevron_right_outlined,
                size: 40,
              ),
            ),
            const ProfileMenuDivider(),

            ProfileMenuItem(
              title: 'My Vehicle',
              iconLeading: Icons.local_taxi_sharp,
              onTap: () => {},
              iconTrailing: Icons.chevron_right_outlined,
            ),
            ProfileMenuItem(
              title: 'My Station',
              iconLeading: Icons.charging_station_outlined,
              onTap: () => {},
              iconTrailing: Icons.chevron_right_outlined,
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

            // ElevatedButton(
            //   onPressed: () => AutoRouter.of(context).push(const AddCarRoute()),
            //   child: const Text(
            //     'Add Car',
            //     style: TextStyle(
            //       color: Colors.blue,
            //     ),
            //   ),
            // ),
            // 20.heightBox,
            // ElevatedButton(
            //   onPressed: () =>
            //       AutoRouter.of(context).push(const AddStationRoute()),
            //   child: const Text(
            //     'Add Station',
            //     style: TextStyle(
            //       color: Colors.blue,
            //     ),
            //   ),
            // )
          ],
        ).paddingAll(24.0),
      ),
    );
  }
}
