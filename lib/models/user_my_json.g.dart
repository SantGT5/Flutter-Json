// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_my_json.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserMyJson _$UserMyJsonFromJson(Map json) => UserMyJson(
      (json['users'] as List<dynamic>)
          .map((e) => User.fromJson(Map<String, dynamic>.from(e as Map)))
          .toList(),
    );

Map<String, dynamic> _$UserMyJsonToJson(UserMyJson instance) =>
    <String, dynamic>{
      'users': instance.users.map((e) => e.toJson()).toList(),
    };
