import "package:json_annotation/json_annotation.dart";

part 'user.g.dart';

@JsonSerializable()
class User {
  User(this.avatar, this.name, this.email);

  String avatar;
  String name;
  String email;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);
}
