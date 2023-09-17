import 'dart:convert';

import 'pets_model.dart';
import 'subscription_model.dart';
import 'user_model.dart';

class ClientModel {
  List<PetsModel>? pets;
  UserModel? user;
  SubscriptionModel? subscription;

  ClientModel({
    this.pets,
    this.user,
    this.subscription,
  });

  Map<String, dynamic> _toMap() {
    var data = <String, dynamic>{};
    data['pets'] = pets;
    data['user'] = user;
    data['subscription'] = subscription;
    return data;
  }

  factory ClientModel._fromMap(Map<String, dynamic> map) {
    List<dynamic> listPets = map['pets'];
    return ClientModel(
      pets: listPets.map((e) => PetsModel.fromMap(e)).toList(),
      user: UserModel.fromMap(map['user']),
      subscription: SubscriptionModel.fromMap(map['subscription']),
    );
  }

  String toJson() => jsonEncode(_toMap());

  factory ClientModel.fromJson(String json) {
    return ClientModel._fromMap(jsonDecode(json));
  }
}
