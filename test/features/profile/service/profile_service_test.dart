import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:test/test.dart';

import 'package:budz_pratice_test/features/profile/models/user_model.dart';

abstract interface class IProfileService {
  Future<UserModel?> get();
}

class ProfileService implements IProfileService {
  @override
  Future<UserModel?> get() async {
    try {
      final response = await rootBundle.loadString(
        'assets/data/json_data.json',
      );
      if (response.isNotEmpty) {
        final user = UserModel.fromJson(response);
        return user;
      } else {
        return throw Exception('Response not loaded!');
      }
    } catch (e, s) {
      log('Exception: $e', stackTrace: s);
    }
    return null;
  }
}

class ProfileRepository {
  final IProfileService service;

  ProfileRepository({
    required this.service,
  });

  Future<UserModel?> getUser() async {
    var response = await service.get();
    if (response != null) {
      return response;
    }
    return null;
  }
}

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  ProfileService service = ProfileService();
  ProfileRepository repository = ProfileRepository(service: service);

  test('Must return a UserModel object.', () async {
    var user = await repository.getUser();

    expect(user, isA<UserModel>());
  });
}
