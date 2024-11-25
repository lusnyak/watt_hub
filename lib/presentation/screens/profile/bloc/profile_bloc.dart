import 'package:flutter/cupertino.dart';
import 'package:watt_hub/config/config.dart';
// import 'package:watt_hub/data/fake_data/create_cars_data/created_cars_data.dart';
import 'package:watt_hub/data/fake_data/stations_data/stations_map.dart';
import 'package:watt_hub/data/fake_data/users_data/users_data.dart';
import 'package:watt_hub/data/repository/station_repository.dart';
import 'package:watt_hub/domain/models/car_model/car_model.dart';
import 'package:watt_hub/domain/models/station/station_model.dart';
import 'package:watt_hub/domain/models/user/user_model.dart';


part 'profile_event.dart';

part 'profile_state.dart';

part 'profile_bloc.freezed.dart';

@injectable
class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  ProfileBloc() : super(const ProfileState.initial()) {
    /// TODO: - load Profile data from api,
    on<_LoadProfileEvent>((event, emit) async {
      emit(const ProfileState.loading());
      try {
        final myUserData = UserModel.fromJson(userData);

        final List<StationModel> myStationData = stationsData
            .map((station) => StationModel.fromJson(station))
            .toList();
        // final List<CarModel> myCarData =
        //     createdCarsData.map((car) => CarModel.fromJson(car)).toList();
        emit(ProfileState.loaded(
            userData: myUserData,
            stationsData: [] ,
            carsData: []));
      } catch (error) {
        emit(ProfileState.error(error.toString())); // Emit error state
      }
    });
  }

  // @override
  // Future<void> close() {
  //   pageController.dispose();
  //   return super.close();
  // }
}
