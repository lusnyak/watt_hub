import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:watt_hub/config/locator/service_locator.dart';
import 'package:watt_hub/data/repository/user_repository.dart';
import 'package:watt_hub/domain/body_requests_model/edit_user/edit_user_model.dart';
import 'package:watt_hub/domain/models/user/user_model.dart';

part 'profile_detail_event.dart';
part 'profile_detail_state.dart';
part 'profile_detail_bloc.freezed.dart';

@injectable
class ProfileDetailBloc extends Bloc<ProfileDetailEvent, ProfileDetailState> {
  final TextEditingController fullNameController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();

  ProfileDetailBloc() : super(const _InitialState()) {
    on<LoadProfileEvent>(_onLoadProfileEvent);
    on<UpdateProfileEvent>(_onUpdateProfileEvent);
  }

  Future<void> _onLoadProfileEvent(event, emit) async {
    fullNameController.text = event.initialFullName ?? '';
    phoneController.text = event.initialPhoneNumber ?? '';
  }

  Future<void> _onUpdateProfileEvent(event, emit) async {
    emit(const ProfileDetailState.loading());
    try {
      final editData = EditUserModel(
        fullName: fullNameController.text,
        phoneNumber: phoneController.text,
      );

      final isUpdated = await getIt<UserRepository>().edit(event.id, editData);

      emit(ProfileDetailState.updated(isUpdated));
    } catch (error) {
      emit(ProfileDetailState.error(error.toString()));
    }
  }
}
