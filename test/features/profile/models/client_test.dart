import 'dart:convert';

import 'package:budz_pratice_test/features/profile/models/client_model.dart';
import 'package:budz_pratice_test/features/profile/models/pets_model.dart';
import 'package:budz_pratice_test/features/profile/models/subscription_model.dart';
import 'package:budz_pratice_test/features/profile/models/user_model.dart';
import 'package:test/test.dart';

void main() {
  List<PetsModel> petsModel = [
    PetsModel(
      id: "B05C4E66-4E5E-4B4D-8BDE-B7AFC9F476FF",
    ),
  ];

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

  SubscriptionModel subscriptionModel = SubscriptionModel(
    userType: "free",
    createdAt: null,
    userId: "48E792A6-EF69-467E-B9FB-E4C272AE23AF",
    updatedAt: null,
    subscriptionStatus: "free",
    id: "92D3775C-8B7D-44ED-A413-313B9CFB96B2",
    subscriptionType: "free",
  );

  ClientModel clientModel = ClientModel(
    pets: petsModel,
    user: userModel,
    subscription: subscriptionModel,
  );

  Map<String, dynamic> data = {
    "pets": [
      {"id": "B05C4E66-4E5E-4B4D-8BDE-B7AFC9F476FF"}
    ],
    "user": {
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
          "\$2b\$12\$W1oIUW75/caReXs66OsCS.nj/ldR/cVc2L91wLVAnTweXn8ZNP5lu"
    },
    "subscription": {
      "userType": "free",
      "createdAt": null,
      "userId": "48E792A6-EF69-467E-B9FB-E4C272AE23AF",
      "updatedAt": null,
      "subscriptionStatus": "free",
      "id": "92D3775C-8B7D-44ED-A413-313B9CFB96B2",
      "subscriptionType": "free"
    }
  };

  group('class ClientModel', () {
    test('Must return a String object', () {
      final data = clientModel.toJson();

      expect(data, isA<String>());
    });

    test('Must return a ClientModel object.', () {
      var model = ClientModel.fromJson(jsonEncode(data));

      expect(model, isA<ClientModel>());
    });
  });
}
