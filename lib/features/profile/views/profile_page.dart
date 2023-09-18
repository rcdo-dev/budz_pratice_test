import 'package:budz_pratice_test/features/profile/bloc/profile_bloc.dart';
import 'package:budz_pratice_test/features/profile/bloc/profile_events.dart';
import 'package:budz_pratice_test/features/profile/bloc/profile_state.dart';
import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  late final ProfileBloc bloc;

  @override
  void initState() {
    super.initState();
    bloc = ProfileBloc();
  }

  @override
  void dispose() {
    bloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<ProfileBloc, ProfileState>(
        bloc: bloc,
        builder: (context, state) {
          if (state is ProfileInitialState) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (state is ProfileLoaded) {
            final client = state.client;
            return Center(
              child: Text(
                client!.user!.email.toString(),
              ),
            );
          }
          return const Center(
            child: Text('Sem Valor'),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          bloc.add(LoadClientEvent());
        },
      ),
    );
  }
}
