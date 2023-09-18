import 'package:budz_pratice_test/features/profile/models/client_model.dart';

abstract class ProfileState {
  ClientModel? client;

  ProfileState({
    this.client,
  });
}

class ProfileInitialState extends ProfileState {
  ProfileInitialState() : super(client: null);
}

class ProfileLoaded extends ProfileState {
  ProfileLoaded({
    required ClientModel? client,
  }) : super(client: client);
}
