import 'dart:convert';

class PetsModel {
  String? id;

  PetsModel({
    this.id,
  });

  Map<String, dynamic> _toMap() {
    var data = <String, dynamic>{};
    data['id'] = id;
    return data;
  }

  factory PetsModel._fromMap(Map<String, dynamic> map) {
    return PetsModel(
      id: map['id'],
    );
  }

  String toJson() => jsonEncode(_toMap());

  factory PetsModel.fromJson(String json) {
    return PetsModel._fromMap(jsonDecode(json));
  }
}
