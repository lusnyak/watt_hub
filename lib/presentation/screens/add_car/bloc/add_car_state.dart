part of 'add_car_bloc.dart';

@freezed
class AddCarState with _$AddCarState {
  const factory AddCarState.error(String message) = AddCarErrorState;

  const factory AddCarState.loaded({
   AddCarViewModel?  addCarData
  }) = _AddCarState;
}
