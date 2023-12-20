import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sms_tool/features/attendance/models/attendance_message.dart';
import 'package:sms_tool/features/attendance/attendance_repo.dart';

class AttendanceMessageList extends ConsumerWidget {
  final Set<String> attendanceSelections;
  final Function(String) onToggle;

  const AttendanceMessageList({
    super.key,
    required this.attendanceSelections,
    required this.onToggle,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final attendanceMessages = ref.watch(attendanceMessagesProvider);
    debugPrint(attendanceMessages.asData?.value.length.toString());

    return attendanceMessages.when(
        data: (data) => ListView.builder(
              itemCount: data.length,
              itemBuilder: (context, index) => AttendanceMessageItem(
                  message: data[index],
                  attendanceSelections: attendanceSelections,
                  onToggle: onToggle,
                  isSelected: attendanceSelections.contains(data[index].id)),
            ),
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (err, stack) => Text(err.toString()));
  }
}

class AttendanceMessageItem extends StatelessWidget {
  final AttendanceMessage message;
  final Set<String> attendanceSelections;
  final Function(String) onToggle;
  final bool isSelected;

  const AttendanceMessageItem({
    super.key,
    required this.message,
    required this.attendanceSelections,
    required this.onToggle,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    final ctxTheme = Theme.of(context);

    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      child: InkWell(
        onTap: () {
          onToggle(message.id);
        },
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Checkbox(
              value: isSelected,
              onChanged: null,
              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
            ),
            const SizedBox(width: 10),
            Expanded(
                child: Container(
                    padding: const EdgeInsets.only(top: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(message.formattedMessage),
                        const SizedBox(height: 10),
                        Chip(
                          // padding: EdgeInsets.zero,
                          materialTapTargetSize:
                              MaterialTapTargetSize.shrinkWrap,
                          label: Text(message.status,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall
                                  ?.copyWith(
                                      color: message.status == 'Absent'
                                          ? ctxTheme.colorScheme.onError
                                          : Colors.black)),
                          backgroundColor: message.status == 'Absent'
                              ? ctxTheme.colorScheme.error
                              : Colors.yellowAccent,
                          visualDensity: VisualDensity.compact,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                        )
                      ],
                    )))
          ],
        ),
      ),
    );
  }
}
