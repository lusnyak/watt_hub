import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:watt_hub/data/fake_data/users_data/users_data.dart';
import 'package:watt_hub/domain/models/user/user_model.dart';
import 'package:watt_hub_uikit/watt_hub_uikit.dart';

part 'profile_detail_event.dart';
part 'profile_detail_state.dart';
part 'profile_detail_bloc.freezed.dart';

@injectable
class ProfileDetailBloc extends Bloc<ProfileDetailEvent, ProfileDetailState> {
  final TextEditingController fullNameController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();

  ProfileDetailBloc() : super(const _InitialState()) {
    on<LoadProfileEvent>((event, emit) async {
      emit(const ProfileDetailState.loading());
      try {
        await 2.delay();

        final user = UserModel.fromJson(userData);

        fullNameController.text = event.initialFullName ?? '';
        phoneController.text = event.initialPhoneNumber ?? '';
        emit(ProfileDetailState.loaded(user));
      } catch (e) {
        emit(
          ProfileDetailState.error('Failed to load profile: ${e.toString()}'),
        );
      }
    });
  }
}
