// To parse this JSON data, do
//
//     final userResponse = userResponseFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'user.freezed.dart';
part 'user.g.dart';

UserResponse userResponseFromJson(String str) =>
    UserResponse.fromJson(json.decode(str));

String userResponseToJson(UserResponse data) => json.encode(data.toJson());

@freezed
class UserResponse with _$UserResponse {
  const factory UserResponse({
    required User user,
  }) = _UserResponse;

  factory UserResponse.fromJson(Map<String, dynamic> json) =>
      _$UserResponseFromJson(json);
}

@freezed
class User with _$User {
  const factory User({
    required String id,
    @JsonKey(name: "first_name") required String firstName,
    @JsonKey(name: "father_name") required String fatherName,
    required String email,
    required String permissions,
    @JsonKey(name: "created_at") required String createdAt,
    @JsonKey(name: "updated_at") required String updatedAt,
    required dynamic hrt,
    required dynamic teacher,
    required String token,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  static User? fromPref(String? savedPref) => savedPref == null
      ? null
      : User.fromJson(jsonDecode(savedPref) as Map<String, dynamic>);

  // List<String> get permissionsParsed => permissions.split(',');
}

extension UserPermission on User {
  List<String> get permissionsParsed =>
      List<String>.from(jsonDecode(permissions));
}
