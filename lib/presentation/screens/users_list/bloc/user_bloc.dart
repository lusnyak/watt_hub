import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'user_event.dart';
import 'user_state.dart';

@injectable
class UserBloc extends Bloc<UserEvent, UserState> {
  UserBloc() : super(UserState(users: [])) {
    on<AddUser>((event, emit) {
      emit(UserState(users: List.from(state.users)..add(event.user)));
    });

    on<RemoveUser>((event, emit) {
      emit(UserState(
          users:
              state.users.where((user) => user.id != event.userId).toList()));
    });

    on<UpdateUser>((event, emit) {
      emit(UserState(
          users: state.users.map((user) {
        return user.id == event.updatedUser.id ? event.updatedUser : user;
      }).toList()));
    });
  }
}
