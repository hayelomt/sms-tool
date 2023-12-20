import 'dart:convert';

import 'package:isar/isar.dart';

import 'package:sms_tool/core/core.dart';
import 'package:sms_tool/features/text_message/models/text_message.dart';

part 'text_message_entity.g.dart';

@collection
class TextMessageEntity {
  @Index()
  String id;

  Id get isarId => fastHash(id);

  String attendance;

  TextMessageEntity({required this.id, required this.attendance});

  factory TextMessageEntity.fromModel(TextMessage message) =>
      TextMessageEntity(id: message.id, attendance: jsonEncode(message));

  TextMessage toModel() => TextMessage.fromJson(jsonDecode(attendance));
}
