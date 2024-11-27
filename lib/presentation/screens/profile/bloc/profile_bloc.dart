import 'package:flutter/widgets.dart';
import 'package:watt_hub/config/config.dart';
import 'package:watt_hub/data/fake_data/stations_data/stations_map.dart';
import 'package:watt_hub/data/repository/car_repository.dart';
import 'package:watt_hub/data/repository/user_repository.dart';
import 'package:watt_hub/domain/models/car_model/car_model.dart';
import 'package:watt_hub/domain/models/station/station_model.dart';
import 'package:watt_hub/domain/models/user/user_model.dart';

part 'profile_event.dart';

part 'profile_state.dart';

part 'profile_bloc.freezed.dart';

@injectable
class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  ProfileBloc() : super(const ProfileState.initial()) {
    on<_LoadUserDataEvent>((event, emit) async {
      final currentState = state as _ProfileLoadedState;
      try {
        final myUserData = await getIt<UserRepository>().getMe();

        emit(currentState.copyWith(userData: myUserData));
      } catch (error) {
        emit(ProfileState.error(error.toString()));
      }
    });

    on<_LoadProfileEvent>((event, emit) async {
      emit(const ProfileState.loading());
      try {
        final myUserData = await getIt<UserRepository>().getMe();
        final carData = await getIt<CarRepository>().getMyCar();
        debugPrint('$carData carData');

        final List<StationModel> myStationData = stationsData
            .map((station) => StationModel.fromJson(station))
            .toList();
        emit(ProfileState.loaded(
          userData: myUserData,
          stationsData: myStationData,
          carsData: carData,
        ));
      } catch (error) {
        emit(ProfileState.error(error.toString()));
      }
    });
  }
}
