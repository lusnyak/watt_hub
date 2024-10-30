import 'package:flutter/cupertino.dart';
import 'package:watt_hub/config/config.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:watt_hub/data/fake_data/car_models_data/car_models_data.dart';
import 'package:watt_hub/data/fake_data/create_cars_data/created_cars_data.dart';
import 'package:watt_hub/data/fake_data/profile_data/profile_data.dart';
import 'package:watt_hub/data/fake_data/stations_data/stations_map.dart';
import 'package:watt_hub/data/fake_data/users_data/users_data.dart';
import 'package:watt_hub/data/repository/user_repository.dart';
import 'package:watt_hub/domain/models/car_model/car_model.dart';
import 'package:watt_hub/domain/models/profile/profile_model.dart';
import 'package:watt_hub/domain/models/station/station_model.dart';
import 'package:watt_hub/domain/models/user/user_model.dart';

part 'profile_event.dart';

part 'profile_state.dart';

part 'profile_bloc.freezed.dart';

@injectable
class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final PageController pageController;

  ProfileBloc()
      : pageController = PageController(),
        super(const ProfileState.initialState()) {
    on<LoadProfileEvent>((event, emit) async {
      final myUserData = UserModel.fromJson(userData);
      final myStationData = StationModel.fromJson(stationData);
      final myCarData = CarModel.fromJson(createdCarData);

      emit(ProfileState.loadedState(
          userData: myUserData,
          stationData: myStationData,
          carData: myCarData));
    });
  }

  @override
  Future<void> close() {
    pageController.dispose();
    return super.close();
  }
}
