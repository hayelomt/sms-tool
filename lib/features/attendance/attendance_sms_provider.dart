import 'package:flutter/material.dart';
import 'package:flutter_sms/flutter_sms.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sms_tool/features/attendance/models/attendance_message.dart';
import 'package:sms_tool/features/attendance/models/sms_state.dart';

part 'attendance_sms_provider.g.dart';

@riverpod
class AttendanceSmsGateway extends _$AttendanceSmsGateway {
  @override
  SmsState build() {
    return SmsState.empty();
  }

  Future<List<String>> sendMessages(List<AttendanceMessage> messages) async {
    state = SmsState.empty().copyWith(sending: true);

    final List<String> successIds = [];

    for (var item in messages) {
      try {
        if (item.student.primaryPhone != null) {
          await sendSMS(
            message: item.formattedMessage,
            recipients: [item.student.primaryPhone!],
            sendDirect: true,
          );
        }

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
