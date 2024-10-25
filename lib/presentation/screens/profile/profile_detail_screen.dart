import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:watt_hub/data/local/onboarding_data/onboarding_data.dart';
import 'package:watt_hub/presentation/screens/add_station/add_station_screen.dart';
import 'package:watt_hub/presentation/screens/choose_station_address/choose_station_address_screen.dart';
import 'package:watt_hub/presentation/screens/profile/sub_widget/profile_menu_item.dart';
import 'package:watt_hub_uikit/watt_hub_uikit.dart';

@RoutePage()
class ProfileDetailScreen extends StatelessWidget {
  const ProfileDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Personal Info'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          const Icon(Icons.mode_edit_outlined).paddingSymmetric(horizontal: 20)
        ],
      ),
      body: Center(child: Text("Profile Detail Screen")),
    );
  }
}
