import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:watt_hub/domain/models/user/user_model.dart';
import 'package:watt_hub/presentation/screens/users_list/bloc/user_bloc.dart';
import 'package:watt_hub/presentation/screens/users_list/bloc/user_event.dart';
import 'package:watt_hub/presentation/screens/users_list/bloc/user_state.dart';

class UsersListView extends StatelessWidget {
  UsersListView({super.key});

  final _nameController = TextEditingController();
  final _ageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final userBloc = context.read<UserBloc>();

    return Scaffold(
      appBar: AppBar(
        title: const Text('User Management with BLoC'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: _nameController,
              decoration: const InputDecoration(labelText: 'Name'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: _ageController,
              decoration: const InputDecoration(labelText: 'Age'),
              keyboardType: TextInputType.number,
            ),
          ),
          ElevatedButton(
            onPressed: () {
              final newUser = UserModel(
                id: DateTime.now().toString(),
                name: _nameController.text,
                age: int.tryParse(_ageController.text) ?? 0,
              );
              userBloc.add(AddUser(newUser));
            },
            child: const Text('Add User'),
          ),
          BlocBuilder<UserBloc, UserState>(
            builder: (context, state) {
              return Expanded(
                child: ListView.builder(
                  itemCount: state.users.length,
                  itemBuilder: (context, index) {
                    final user = state.users[index];
                    return ListTile(
                      title: Text(user.name),
                      subtitle: Text('Age: ${user.age}'),
                      trailing: IconButton(
                        icon: const Icon(Icons.delete),
                        onPressed: () {
                          userBloc.add(RemoveUser(user.id));
                        },
                      ),
                    );
                  },
                ),
              );
            },
          ),
        ],
      ).paddingAll(20.0),
    );
  }
}
