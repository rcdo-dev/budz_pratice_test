import 'package:test/test.dart';

import 'package:flutter/material.dart';

import 'package:budz_pratice_test/features/profile/models/client_model.dart';
import 'package:budz_pratice_test/features/profile/repositories/profile_repository.dart';
import 'package:budz_pratice_test/features/profile/services/profile_service.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  ProfileService service = ProfileService();
  ProfileRepository repository = ProfileRepository(service: service);

  test('Must return a ClientModel object.', () async {
    var client = await repository.getUser();

    expect(client, isA<ClientModel>());
  });
}
