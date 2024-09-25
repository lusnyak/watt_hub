import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:watt_hub/presentation/screens/users_list/bloc/user_bloc.dart';
import 'package:watt_hub/presentation/screens/users_list/users_list_view.dart';

@RoutePage()
class UsersListScreen extends StatelessWidget {
  const UsersListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => UserBloc(),
      child: UsersListView(),
    );
  }
}
