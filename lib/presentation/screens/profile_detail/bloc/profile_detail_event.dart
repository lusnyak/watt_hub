part of 'profile_detail_bloc.dart';

@freezed
class ProfileDetailEvent with _$ProfileDetailEvent {
  const factory ProfileDetailEvent.loadProfile({
    String? initialFullName,
    String? initialPhoneNumber,
  }) = LoadProfileEvent;
  const factory ProfileDetailEvent.updateProfile(int? id,) = UpdateProfileEvent;
}
