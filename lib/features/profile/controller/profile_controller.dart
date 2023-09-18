import 'package:flutter_modular/flutter_modular.dart';

import '../models/client_model.dart';
import '../repositories/profile_repository.dart';

class ProfileController {
  final repository = Modular.get<ProfileRepository>();

  ProfileController() {
    client();
  }

  Future<ClientModel?> client() async {
    var client = await repository.getClient();
    if (client != null) {
      return client;
    }
    return null;
  }
}
