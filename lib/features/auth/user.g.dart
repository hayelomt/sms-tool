// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserResponseImpl _$$UserResponseImplFromJson(Map<String, dynamic> json) =>
    _$UserResponseImpl(
      user: User.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$UserResponseImplToJson(_$UserResponseImpl instance) =>
    <String, dynamic>{
      'user': instance.user,
    };

_$UserImpl _$$UserImplFromJson(Map<String, dynamic> json) => _$UserImpl(
      id: json['id'] as String,
      firstName: json['first_name'] as String,
      fatherName: json['father_name'] as String,
      email: json['email'] as String,
      permissions: json['permissions'] as String,
      createdAt: json['created_at'] as String,
      updatedAt: json['updated_at'] as String,
      hrt: json['hrt'],
      teacher: json['teacher'],
      token: json['token'] as String,
    );

Map<String, dynamic> _$$UserImplToJson(_$UserImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'first_name': instance.firstName,
      'father_name': instance.fatherName,
      'email': instance.email,
      'permissions': instance.permissions,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'hrt': instance.hrt,
      'teacher': instance.teacher,
      'token': instance.token,
    };
