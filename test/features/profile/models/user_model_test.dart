import 'dart:convert';

import 'package:test/test.dart';

import 'package:budz_pratice_test/features/profile/models/user_model.dart';

void main() {
  UserModel userModel = UserModel(
    email: "j@teste.com",
    generalPetID: "B05C4E66-4E5E-4B4D-8BDE-B7AFC9F476FF",
    thirdPartyLoginIdToken: null,
    pushAllow: null,
    fullname: "J",
    thirdPartyLoginServerAuthCode: null,
    photoUrl: null,
    updatedDate: "2023-09-14T00:00:00Z",
    createdDate: "2023-09-14T00:00:00Z",
    isThirdPartyLogin: null,
    phoneNumber: null,
    id: "48E792A6-EF69-467E-B9FB-E4C272AE23AF",
    nickname: "J",
    birthdate: null,
    gender: null,
    password: "\$2b\$12\$W1oIUW75/caReXs66OsCS.nj/ldR/cVc2L91wLVAnTweXn8ZNP5lu",
  );

  Map<String, dynamic> data = {
    "email": "j@teste.com",
    "generalPetID": "B05C4E66-4E5E-4B4D-8BDE-B7AFC9F476FF",
    "thirdPartyLoginIdToken": null,
    "pushAllow": null,
    "fullname": "J",
    "thirdPartyLoginServerAuthCode": null,
    "photoUrl": null,
    "updatedDate": "2023-09-14T00:00:00Z",
    "createdDate": "2023-09-14T00:00:00Z",
    "isThirdPartyLogin": null,
    "phoneNumber": null,
    "id": "48E792A6-EF69-467E-B9FB-E4C272AE23AF",
    "nickname": "J",
    "birthdate": null,
    "gender": null,
    "password":
        "\$2b\$12\$W1oIUW75/caReXs66OsCS.nj/ldR/cVc2L91wLVAnTweXn8ZNP5lu",
  };

  group('class UserModel', () {
    test('Must return a String object.', () {
      final data = userModel.toJson();
      expect(data, isA<String>());
    });
    test('Must return a UserModel object.', () {
      final model = UserModel.fromJson(jsonEncode(data));

      expect(model, isA<UserModel>());
    });
  });
}
