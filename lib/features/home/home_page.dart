import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sms_tool/features/attendance/widgets/attendance_messages_tab.dart';
import 'package:sms_tool/features/settings/settings_page.dart';
import 'package:sms_tool/features/text_message/widgets/text_messages_tab.dart';

class HomePage extends HookConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentIndex = useState(0);

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: SafeArea(
        child: IndexedStack(
          index: currentIndex.value,
          children: const [
            AttendanceMessagesTab(),
            MessagesTab(),
            SettingsPage()
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex.value,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.group_outlined), label: 'Attendance'),
          BottomNavigationBarItem(
              icon: Icon(Icons.message_outlined), label: 'Messages'),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: 'Settings'),
        ],
        onTap: (index) {
          currentIndex.value = index;
        },
      ),
    );
  }
}
