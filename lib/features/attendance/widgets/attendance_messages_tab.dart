import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:sms_tool/core/core.dart';
import 'package:sms_tool/features/attendance/attendance_repo.dart';
import 'package:sms_tool/features/attendance/attendance_sms_provider.dart';
import 'package:sms_tool/features/attendance/widgets/attendance_message_list.dart';
import 'package:sms_tool/core/ui/widgets/sms_progress_indicator.dart';

class AttendanceMessagesTab extends HookConsumerWidget {
  const AttendanceMessagesTab({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final attendanceSelections = useState<Set<String>>({});
    final ctxTheme = Theme.of(context);
    final messages = ref.watch(attendanceMessagesProvider);

    final checkboxState = attendanceSelections.value.isEmpty
        ? false
        : attendanceSelections.value.length ==
                (messages.asData?.value.length ?? -1)
            ? true
            : null;

    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Attendance Messages',
                  style: ctxTheme.textTheme.headlineSmall),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Checkbox(
                        value: checkboxState,
                        tristate: true,
                        onChanged: (messages.asData?.value.isEmpty ?? true)
                            ? null
                            : (_) {
                                attendanceSelections.value =
                                    switch (checkboxState) {
                                  false => Set<String>.from(
                                      (messages.asData?.value ?? [])
                                          .map((e) => e.id)),
                                  _ => {},
                                };
                              },
                        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      ),
                      const SizedBox(width: 5),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          const Text('Select all'),
                          const SizedBox(width: 10),
                          Text(
                              '[${attendanceSelections.value.length}/${(messages.asData?.value ?? []).length} selected]',
                              style: ctxTheme.textTheme.labelSmall)
                        ],
                      )
                    ],
                  ),
                  ElevatedButton.icon(
                      onPressed: messages.isLoading
                          ? null
                          : () async {
                              attendanceSelections.value = {};
                              ref
                                  .read(attendanceMessagesProvider.notifier)
                                  .fetchMessages();
                            },
                      icon: const Icon(Icons.cloud_download_outlined, size: 18),
                      label: const Text('Get')),
                ],
              ),
              Row(
                children: [
                  ElevatedButton.icon(
                      onPressed: attendanceSelections.value.isEmpty
                          ? null
                          : () async {
                              final selectedMessages =
                                  (messages.asData?.value ?? [])
                                      .where((i) => attendanceSelections.value
                                          .contains(i.id))
                                      .toList();

                              final successIds = await ref
                                  .read(attendanceSmsGatewayProvider.notifier)
                                  .sendMessages(selectedMessages);

                              final curSelections =
                                  Set<String>.from(attendanceSelections.value);

                              curSelections
                                  .removeAll(Set<String>.from(successIds));

                              attendanceSelections.value = curSelections;

                              ref
                                  .read(attendanceMessagesProvider.notifier)
                                  .deleteMessages(successIds);
                            },
                      icon: const Icon(Icons.send, size: 16),
                      label:
                          Text('Send', style: ctxTheme.textTheme.labelMedium)),
                  const SizedBox(width: 10),
                  ElevatedButton.icon(
                      onPressed: attendanceSelections.value.isEmpty
                          ? null
                          : () async {
                              await showDialog<bool>(
                                context: context,
                                builder: (context) => AlertDialog(
                                  title: const Text('Confirm Delete'),
                                  content: const Text(
                                      'Are you sure you want to delete these items?'),
                                  actions: [
                                    TextButton(
                                      child: const Text('Cancel'),
                                      onPressed: () =>
                                          Navigator.of(context).pop(false),
                                    ),
                                    TextButton(
                                      child: const Text('Delete'),
                                      onPressed: () async {
                                        Navigator.of(context).pop(true);
                                        await ref
                                            .read(attendanceMessagesProvider
                                                .notifier)
                                            .deleteMessages(attendanceSelections
                                                .value
                                                .toList());
                                        attendanceSelections.value = {};
                                        alertMessage('Deleted successfully');
                                      },
                                    ),
                                  ],
                                ),
                              );
                            },
                      icon: Icon(Icons.delete_outlined,
                          size: 16, color: ctxTheme.colorScheme.onError),
                      label: Text('Delete',
                          style: ctxTheme.textTheme.labelMedium
                              ?.copyWith(color: ctxTheme.colorScheme.onError)),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: ctxTheme.colorScheme.error)),
                ],
              ),
              const SizedBox(height: 10),
              Expanded(
                  child: AttendanceMessageList(
                attendanceSelections: attendanceSelections.value,
                onToggle: (id) {
                  final curState = Set<String>.from(attendanceSelections.value);

                  curState.contains(id)
                      ? curState.remove(id)
                      : curState.add(id);

                  attendanceSelections.value = curState;
                },
              )),
            ],
          ),
        ),
        Consumer(builder: (context, ref, _) {
          final smsState = ref.watch(attendanceSmsGatewayProvider);

          return SmsProgressIndicator(
            selections: attendanceSelections.value.length,
            smsState: smsState,
            onDone: () =>
                ref.read(attendanceSmsGatewayProvider.notifier).clearSending(),
          );
        })
      ],
    );
  }
}
