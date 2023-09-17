import 'dart:convert';

import 'package:test/test.dart';

import 'package:budz_pratice_test/features/profile/models/pets_model.dart';

void main() {
  PetsModel petsModel = PetsModel(
    id: "B05C4E66-4E5E-4B4D-8BDE-B7AFC9F476FF",
  );

  Map<String, dynamic> data = {
    "id": "B05C4E66-4E5E-4B4D-8BDE-B7AFC9F476FF",
  };

  group('class PetsModel', () {
    test('Must return a String object', () {
      final data = petsModel.toJson();

      expect(data, isA<String>());
    });

    test('Must return a PetsModel object.', () {
      var petsModel = PetsModel.fromJson(jsonEncode(data));

      expect(petsModel, isA<PetsModel>());
    });
  });
}
