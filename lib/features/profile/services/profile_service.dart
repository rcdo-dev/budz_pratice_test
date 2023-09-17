import 'dart:developer';

import 'package:flutter/services.dart';

import '../interfaces/i_profile_service.dart';
import '../models/client_model.dart';

class ProfileService implements IProfileService {
  @override
  Future<ClientModel?> get() async {
    try {
      final response = await rootBundle.loadString(
        'assets/data/json_data.json',
      );
      if (response.isNotEmpty) {
        final user = ClientModel.fromJson(response);
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
