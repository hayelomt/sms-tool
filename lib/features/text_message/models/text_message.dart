import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'text_message.freezed.dart';
part 'text_message.g.dart';

TextMessage textMessageFromJson(String str) =>
    TextMessage.fromJson(json.decode(str));

String textMessageToJson(TextMessage data) => json.encode(data.toJson());

@freezed
class TextMessage with _$TextMessage {
  const factory TextMessage({
    required String id,
    @JsonKey(name: "entity_id") required String entityId,
    @JsonKey(name: "msg_sent") required bool msgSent,
    required String message,
    required String phone,
    @JsonKey(name: "parent_resource_id") String? parentResourceId,
    @JsonKey(name: "msg_type") required String msgType,
    @JsonKey(name: "msg_tags") List<String>? msgTags,
    @JsonKey(name: "created_at") required DateTime createdAt,
    @JsonKey(name: "updated_at") required DateTime updatedAt,
  }) = _TextMessage;

  factory TextMessage.fromJson(Map<String, dynamic> json) =>
      _$TextMessageFromJson(json);
}
