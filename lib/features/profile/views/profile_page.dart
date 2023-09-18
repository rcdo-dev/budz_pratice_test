import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/profile_bloc.dart';
import '../bloc/profile_events.dart';
import '../bloc/profile_state.dart';
import '../widgets/custom_app_bar.dart';
import '../widgets/short_profile.dart';
import '../../shared/themes/budz_text_styles.dart';

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
    bloc.add(LoadProfileEvent());
  }

  @override
  void dispose() {
    bloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return BlocBuilder<ProfileBloc, ProfileState>(
      bloc: bloc,
      builder: (context, state) {
        if (state is ProfileInitialState) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else if (state is ProfileLoaded) {
          final client = state.client;
          return Scaffold(
            backgroundColor: Colors.grey[300],
            appBar: CustomAppBar(
              sizeValue: Size(
                size.width,
                size.height / 8,
              ),
              child: ShortProfile(
                userName: client!.user!.fullname.toString(),
                userEmail: client.user!.email.toString(),
                nameInitials: client.user!.fullname.toString().substring(0, 1),
              ),
            ),
            body: const Center(
              child: Text(
                'Profile Page',
              ),
            ),
          );
        }
        return Center(
          child: Text(
            'Failed to load the application',
            style: BudzTextStyles.bodyDefaultError,
          ),
        );
      },
    );
  }
}
