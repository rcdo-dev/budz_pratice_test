import 'package:bloc/bloc.dart';
import 'package:budz_pratice_test/features/profile/bloc/profile_events.dart';
import 'package:budz_pratice_test/features/profile/bloc/profile_state.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../repositories/profile_repository.dart';

class ProfileBloc extends Bloc<ProfileEvents, ProfileState>{

  final repository = Modular.get<ProfileRepository>();

  ProfileBloc():super(ProfileInitialState()){
    on<LoadClientEvent>((event, emit) async => emit(ProfileLoaded(client: await repository.getClient())));
  }
}