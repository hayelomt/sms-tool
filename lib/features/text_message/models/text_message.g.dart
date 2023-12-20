// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'text_message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TextMessageImpl _$$TextMessageImplFromJson(Map<String, dynamic> json) =>
    _$TextMessageImpl(
      id: json['id'] as String,
      entityId: json['entity_id'] as String,
      msgSent: json['msg_sent'] as bool,
      message: json['message'] as String,
      phone: json['phone'] as String,
      parentResourceId: json['parent_resource_id'] as String?,
      msgType: json['msg_type'] as String,
      msgTags: (json['msg_tags'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$$TextMessageImplToJson(_$TextMessageImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'entity_id': instance.entityId,
      'msg_sent': instance.msgSent,
      'message': instance.message,
      'phone': instance.phone,
      'parent_resource_id': instance.parentResourceId,
      'msg_type': instance.msgType,
      'msg_tags': instance.msgTags,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
    };
