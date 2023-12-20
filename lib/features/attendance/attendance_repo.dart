import 'package:fpdart/fpdart.dart';
import 'package:isar/isar.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sms_tool/features/attendance/models/attendance_entity.dart';
import 'package:sms_tool/features/attendance/models/attendance_message.dart';

import 'package:sms_tool/core/core.dart';

part 'attendance_repo.g.dart';

@riverpod
class AttendanceMessages extends _$AttendanceMessages {
  @override
  Future<List<AttendanceMessage>> build() async {
    return _readLocalMessages();
  }

  Future<List<AttendanceMessage>> _readLocalMessages() async {
    final isar = ref.read(isarProvider);
    List<AttendanceMessage> attendances = [];

    await isar.writeTxn(() async {
      attendances = (await isar.attendanceEntitys.where().findAll())
          .map((i) => i.toModel())
          .toList();
    });

    attendances.sort((a, b) => b.createdAt.compareTo(a.createdAt));

    return attendances;
  }

  // Add fetchMessages method
  fetchMessages() async {
    state = const AsyncLoading();
    final dio = ref.read(dioProvider);
    final isar = ref.read(isarProvider);

    final result = await apiExecutor(
        cb: () async {
          final res = await dio.get(
              '${Constants.apiUrl}/academic/home-room/student-attendances/non-sent');

          final messages = (res.data as List)
              .map((i) => AttendanceMessage.fromJson(i))
              .toList();

          return right(messages);
        },
        method: 'fetchMessages');

    result.match(
      (l) => state = AsyncError(l.toString(), StackTrace.current),
      (r) async {
        await isar.writeTxn(() => isar.attendanceEntitys
            .putAll(r.map((i) => AttendanceEntity.fromModel(i)).toList()));

        state = AsyncData(await _readLocalMessages());
      },
    );
  }

  deleteMessages(List<String> ids) async {
    final isar = ref.read(isarProvider);

    await isar.writeTxn(() async {
      await isar.attendanceEntitys
          .deleteAll(ids.map((i) => fastHash(i)).toList());
    });

    state = AsyncData(await _readLocalMessages());
  }
}
