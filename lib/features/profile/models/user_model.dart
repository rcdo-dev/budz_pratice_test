import 'dart:convert';

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
