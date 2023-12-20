import 'package:fpdart/fpdart.dart';
import 'package:isar/isar.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sms_tool/core/core.dart';
import 'package:sms_tool/features/text_message/models/text_message.dart';
import 'package:sms_tool/features/text_message/models/text_message_entity.dart';

part 'text_message_repo.g.dart';

@riverpod
class TextMessagesRepo extends _$TextMessagesRepo {
  @override
  Future<List<TextMessage>> build() async {
    return _readLocalMessages();
  }

  Future<List<TextMessage>> _readLocalMessages() async {
    final isar = ref.read(isarProvider);
    List<TextMessage> attendances = [];

    await isar.writeTxn(() async {
      attendances = (await isar.textMessageEntitys.where().findAll())
          .map((i) => i.toModel())
          .toList();
    });

    attendances.sort((a, b) => b.createdAt.compareTo(a.createdAt));

    return attendances;
  }

  fetchMessages() async {
    state = const AsyncLoading();
    final dio = ref.read(dioProvider);
    final isar = ref.read(isarProvider);

    final result = await apiExecutor(
        cb: () async {
          final res = await dio.get(
              '${Constants.apiUrl}/text-messages?mark_sent=true&non_sent=true');

          final messages =
              (res.data as List).map((i) => TextMessage.fromJson(i)).toList();

          return right(messages);
        },
        method: 'fetchMessages');

    result.match(
      (l) => state = AsyncError(l.toString(), StackTrace.current),
      (r) async {
        await isar.writeTxn(() => isar.textMessageEntitys
            .putAll(r.map((i) => TextMessageEntity.fromModel(i)).toList()));

        state = AsyncData(await _readLocalMessages());
      },
    );
  }

  deleteMessages(List<String> ids) async {
    final isar = ref.read(isarProvider);

    await isar.writeTxn(() async {
      await isar.textMessageEntitys
          .deleteAll(ids.map((i) => fastHash(i)).toList());
    });

    state = AsyncData(await _readLocalMessages());
  }
}
