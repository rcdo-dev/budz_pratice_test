import 'dart:convert';

import 'package:test/test.dart';

class UserModel {
  String? email;
  String? generalPetID;
  String? thirdPartyLoginIdToken;
  String? pushAllow;
  String? fullname;
  String? thirdPartyLoginServerAuthCode;
  String? photoUrl;
  String? updatedDate;
  String? createdDate;
  String? isThirdPartyLogin;
  String? phoneNumber;
  String? id;
  String? nickname;
  String? birthdate;
  String? gender;
  String? password;

  UserModel({
    this.email,
    this.generalPetID,
    this.thirdPartyLoginIdToken,
    this.pushAllow,
    this.fullname,
    this.thirdPartyLoginServerAuthCode,
    this.photoUrl,
    this.updatedDate,
    this.createdDate,
    this.isThirdPartyLogin,
    this.phoneNumber,
    this.id,
    this.nickname,
    this.birthdate,
    this.gender,
    this.password,
  });

  Map<String, dynamic> _toMap() {
    var data = <String, dynamic>{};
    data['email'] = email;
    data['generalPetID'] = generalPetID;
    data['thirdPartyLoginIdToken'] = thirdPartyLoginIdToken;
    data['pushAllow'] = pushAllow;
    data['fullname'] = fullname;
    data['thirdPartyLoginServerAuthCode'] = thirdPartyLoginServerAuthCode;
    data['photoUrl'] = photoUrl;
    data['updatedDate'] = updatedDate;
    data['createdDate'] = createdDate;
    data['isThirdPartyLogin'] = isThirdPartyLogin;
    data['phoneNumber'] = phoneNumber;
    data['id'] = id;
    data['nickname'] = nickname;
    data['birthdate'] = birthdate;
    data['gender'] = gender;
    data['password'] = password;
    return data;
  }

  factory UserModel._fromMap(Map<String, dynamic> map) {
    return UserModel(
      email: map['email'],
      generalPetID: map['generalPetID'],
      thirdPartyLoginIdToken: map['thirdPartyLoginIdToken'],
      pushAllow: map['pushAllow'],
      fullname: map['fullname'],
      thirdPartyLoginServerAuthCode: map['thirdPartyLoginServerAuthCode'],
      photoUrl: map['photoUrl'],
      updatedDate: map['updatedDate'],
      createdDate: map['createdDate'],
      isThirdPartyLogin: map['isThirdPartyLogin'],
      phoneNumber: map['phoneNumber'],
      id: map['id'],
      nickname: map['nickname'],
      birthdate: map['birthdate'],
      gender: map['gender'],
      password: map['password'],
    );
  }

  String toJson() => jsonEncode(_toMap());

  factory UserModel.fromJson(String json) {
    return UserModel._fromMap(jsonDecode(json));
  }
}

void main() {
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

  group('class UserModel', () {
    test('Must return a UserModel object.', () {
      final userModel = UserModel.fromJson(jsonEncode(data));

      expect(userModel, isA<UserModel>());
    });

    test('Must return a String object.', () {
      final data = userModel.toJson();
      expect(data, isA<String>());
    });
  });
}
