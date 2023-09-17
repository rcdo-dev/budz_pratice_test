import 'dart:convert';

class SubscriptionModel {
  String? userType;
  String? createdAt;
  String? userId;
  String? updatedAt;
  String? subscriptionStatus;
  String? id;
  String? subscriptionType;

  SubscriptionModel({
    this.userType,
    this.createdAt,
    this.userId,
    this.updatedAt,
    this.subscriptionStatus,
    this.id,
    this.subscriptionType,
  });

  Map<String, dynamic> _toMap() {
    var data = <String, dynamic>{};
    data['userType'] = userType;
    data['createdAt'] = createdAt;
    data['userId'] = userId;
    data['updatedAt'] = updatedAt;
    data['subscriptionStatus'] = subscriptionStatus;
    data['id'] = id;
    data['subscriptionType'] = subscriptionType;
    return data;
  }

  factory SubscriptionModel._fromMap(Map<String, dynamic> map) {
    return SubscriptionModel(
      userType: map['userType'],
      createdAt: map['createdAt'],
      userId: map['userId'],
      updatedAt: map['updatedAt'],
      subscriptionStatus: map['subscriptionStatus'],
      id: map['id'],
      subscriptionType: map['subscriptionType'],
    );
  }

  String toJson() => jsonEncode(_toMap());

  factory SubscriptionModel.fromJson(String json) {
    return SubscriptionModel._fromMap(jsonDecode(json));
  }
}
