import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:watt_hub/config/config.dart';
import 'package:watt_hub/domain/models/user/user_model.dart';
import 'package:watt_hub/presentation/screens/profile_detail/bloc/profile_detail_bloc.dart';
import 'package:watt_hub/utils/extensions/localization_extensions.dart';
import 'package:watt_hub_uikit/watt_hub_uikit.dart';

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
      child: ProfileDetailView(id: userData?.id),
    );
  }
}

class ProfileDetailView extends StatelessWidget {
  const ProfileDetailView({super.key, this.id});

  final int? id;

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
          IconButton(
            onPressed: () {
              context.read<ProfileDetailBloc>().add(UpdateProfileEvent(id));
            },
            icon: const Icon(Icons.mode_edit_outlined)
                .paddingSymmetric(horizontal: 20.w),
          )
        ],
      ),
      body: BlocConsumer<ProfileDetailBloc, ProfileDetailState>(
          listener: (context, state) {
        state.maybeWhen(
            orElse: () => nil,
            error: (message) => context.showSnackBar(message: message),
            updated: (isUpdated) {
              context.router.maybePop(isUpdated);
            });
      }, builder: (context, state) {
        final profileDetailState = context.read<ProfileDetailBloc>();
        return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              WHImagePicker.single(
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
                keyboardType: TextInputType.phone,
                inputFormatters: [
                  FilteringTextInputFormatter.allow(RegExp(r'[0-9+]')),
                ],
                hintText: "+374 93123456",
                controller: profileDetailState.phoneController,
              ).paddingOnly(bottom: 10),
            ]).paddingSymmetric(
          horizontal: 24,
          vertical: 20,
        );
      }),
    );
  }
}
