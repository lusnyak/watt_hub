import 'package:flutter/cupertino.dart';
import 'package:watt_hub/config/config.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:watt_hub/data/fake_data/profile_data/profile_data.dart';
import 'package:watt_hub/domain/models/profile/profile_model.dart';

part 'profile_event.dart';

part 'profile_state.dart';

part 'profile_bloc.freezed.dart';

@injectable
class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final PageController pageController;

  ProfileBloc()
      : pageController = PageController(),
        super(const ProfileState.initial()) {
    on<LoadProfileEvent>((event, emit) {
      emit(ProfileState.loaded(profileData));
    });
  }

  @override
  Future<void> close() {
    pageController.dispose();
    return super.close();
  }
}
