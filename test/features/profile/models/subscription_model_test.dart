import 'dart:convert';

import 'package:test/test.dart';

import 'package:budz_pratice_test/features/profile/models/subscription_model.dart';

void main() {
  SubscriptionModel subscriptionModel = SubscriptionModel(
      userType: "free",
      createdAt: null,
      userId: "48E792A6-EF69-467E-B9FB-E4C272AE23AF",
      updatedAt: null,
      subscriptionStatus: "free",
      id: "92D3775C-8B7D-44ED-A413-313B9CFB96B2",
      subscriptionType: "free");

  var data = <String, dynamic>{
    "userType": "free",
    "createdAt": null,
    "userId": "48E792A6-EF69-467E-B9FB-E4C272AE23AF",
    "updatedAt": null,
    "subscriptionStatus": "free",
    "id": "92D3775C-8B7D-44ED-A413-313B9CFB96B2",
    "subscriptionType": "free"
  };
  group('class SubscritionModel', () {
    test('Must return a String object', () {
      var data = subscriptionModel.toJson();

      expect(data, isA<String>());
    });

    test('Must return a SubscriptionModel object.', () {
      var model = SubscriptionModel.fromJson(jsonEncode(data));

      expect(model, isA<SubscriptionModel>());
    });
  });
}
