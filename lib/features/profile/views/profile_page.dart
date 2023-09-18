import 'package:budz_pratice_test/features/profile/bloc/profile_bloc.dart';
import 'package:budz_pratice_test/features/profile/bloc/profile_events.dart';
import 'package:budz_pratice_test/features/profile/bloc/profile_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
    bloc.add(LoadClientEvent());
  }

  @override
  void dispose() {
    bloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Colors.white,
        ),
        elevation: 0,
        backgroundColor: Colors.white,
        leadingWidth: double.infinity,
        toolbarHeight: 100.0,
        leading: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                backgroundColor: Colors.orange[700],
                maxRadius: 32,
                child: Text(
                  'RC',
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Nome',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    'email@email.com',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
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
    );
  }
}
