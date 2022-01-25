import 'package:flutter_json/models/user.dart';
import "package:json_annotation/json_annotation.dart";

part "user_my_json.g.dart";

@JsonSerializable(anyMap: true, explicitToJson: true)
class UserMyJson {
  UserMyJson(this.users);

  List<User> users;

  factory UserMyJson.fromJson(Map<String, dynamic> json) =>
      _$UserMyJsonFromJson(json);

  Map<String, dynamic> toJson() => _$UserMyJsonToJson(this);
}
