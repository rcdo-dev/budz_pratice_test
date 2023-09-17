import 'package:test/test.dart';

import 'package:flutter/material.dart';

import 'package:budz_pratice_test/features/profile/models/client_model.dart';
import 'package:budz_pratice_test/features/profile/services/profile_service.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  ProfileService service = ProfileService();

  test('Must return a ClientModel object.', () async {
    var client = await service.get();

    expect(client, isA<ClientModel>());
  });
}
