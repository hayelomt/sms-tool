import 'dart:convert';

import 'package:isar/isar.dart';
import 'package:sms_tool/features/attendance/models/attendance_message.dart';

import 'package:sms_tool/core/core.dart';

part 'attendance_entity.g.dart';

@collection
class AttendanceEntity {
  @Index()
  String id;

  Id get isarId => fastHash(id);

  String attendance;

  AttendanceEntity({required this.id, required this.attendance});

  factory AttendanceEntity.fromModel(AttendanceMessage message) =>
      AttendanceEntity(id: message.id, attendance: jsonEncode(message));

  AttendanceMessage toModel() =>
      AttendanceMessage.fromJson(jsonDecode(attendance));
}
