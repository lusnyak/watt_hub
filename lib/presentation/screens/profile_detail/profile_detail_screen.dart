import 'package:flutter/material.dart';
import 'package:watt_hub/config/config.dart';
import 'package:watt_hub/domain/models/user/user_model.dart';
import 'package:watt_hub/presentation/screens/profile_detail/bloc/profile_detail_bloc.dart';
import 'package:watt_hub/utils/extensions/localization_extensions.dart';
import 'package:watt_hub_uikit/watt_hub_uikit.dart';

/// TODO: create bloc for screen,

@RoutePage()
class ProfileDetailScreen extends StatelessWidget {
  const ProfileDetailScreen({
    super.key,
    this.userData,
  });

  final UserModel? userData;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<ProfileDetailBloc>()
        ..add(
          LoadProfileEvent(
            initialFullName: userData?.fullName,
            initialPhoneNumber: userData?.phoneNumber,
          ),
        ),
      child: const ProfileDetailView(),
    );
  }
}

class ProfileDetailView extends StatelessWidget {
  const ProfileDetailView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(context.localized.personalInfo),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          const Icon(Icons.mode_edit_outlined)
              .paddingSymmetric(horizontal: 20.w)
        ],
      ),
      body: BlocConsumer<ProfileDetailBloc, ProfileDetailState>(
          listener: (context, state) {
        state.maybeWhen(
          orElse: () => nil,
          error: (message) => context.showSnackBar(message: message),
        );
      }, builder: (context, state) {
        final profileDetailState = context.read<ProfileDetailBloc>();
        return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              WHImagePicker.single(
                /// TODO: - separate to uikit element - done
                child: WhCircleAvatar(
                  width: 200,
                  height: 200,
                  image: WattHubAssets.images.profileImage.keyName,
                ),
              ).alignAtCenter().paddingSymmetric(vertical: 10),
              WHTextField.singleLine(
                label: context.localized.fullName,
                hintText: context.localized.fullName,
                controller: profileDetailState.fullNameController,
              ).paddingOnly(
                bottom: 10,
              ),
              WHTextField.singleLine(
                label: context.localized.phone,
                hintText: "+374 93123456",
                controller: profileDetailState.phoneController,
              ).paddingOnly(bottom: 10),
            ]).paddingSymmetric(horizontal: 24, vertical: 20);
      }),
    );
  }
}
