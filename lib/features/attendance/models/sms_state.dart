import 'package:freezed_annotation/freezed_annotation.dart';

part 'sms_state.freezed.dart';

@freezed
class SmsState with _$SmsState {
  const factory SmsState({
    required bool sending,
    required bool finished,
    required List<String> successIds,
    required List<String> failIds,
  }) = _SmsState;

  factory SmsState.empty() => const SmsState(
        sending: false,
        finished: false,
        successIds: [],
        failIds: [],
      );
}
