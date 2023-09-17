import 'dart:convert';

class PetsModel {
  String? id;

  PetsModel({
    this.id,
  });

  Map<String, dynamic> toMap() {
    var data = <String, dynamic>{};
    data['id'] = id;
    return data;
  }

  factory PetsModel.fromMap(Map<String, dynamic> map) {
    return PetsModel(
      id: map['id'],
    );
  }

  String toJson() => jsonEncode(toMap());

  factory PetsModel.fromJson(String json) {
    return PetsModel.fromMap(jsonDecode(json));
  }
}
