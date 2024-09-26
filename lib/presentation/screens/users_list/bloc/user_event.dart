import 'package:watt_hub/domain/models/user/user_model.dart';

abstract class UserEvent {}

class AddUser extends UserEvent {
  final UserModel user;
  AddUser(this.user);
}

class RemoveUser extends UserEvent {
  final String userId;
  RemoveUser(this.userId);
}

class UpdateUser extends UserEvent {
  final UserModel updatedUser;
  UpdateUser(this.updatedUser);
}