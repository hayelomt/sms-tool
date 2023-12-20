import 'package:flutter/material.dart';
import 'package:flutter_sms/flutter_sms.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sms_tool/features/attendance/models/sms_state.dart';
import 'package:sms_tool/features/text_message/models/text_message.dart';

part 'text_message_sms_provider.g.dart';

// TODO: Refactor to single gateway

@riverpod
class TextMessageSmsGateway extends _$TextMessageSmsGateway {
  @override
  SmsState build() {
    return SmsState.empty();
  }

  Future<List<String>> sendMessages(List<TextMessage> messages) async {
    state = SmsState.empty().copyWith(sending: true);

    final List<String> successIds = [];

    for (var item in messages) {
      try {
        await sendSMS(
          message: item.message,
          recipients: [item.phone],
          sendDirect: true,
        );

        successIds.add(item.id);
        state = state.copyWith(
          successIds: [...successIds],
        );
      } catch (err) {
        debugPrint('Sms err $err');
        state = state.copyWith(failIds: [...state.failIds, item.id]);
      }
    }

    state = state.copyWith(
      finished: true,
    );

    return successIds;
  }

  clearSending() {
    state = SmsState.empty();
  }
}
