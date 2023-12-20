import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sms_tool/features/auth/auth.dart';

class SettingsPage extends ConsumerWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          IconButton(
            onPressed: ref.read(authProvider.notifier).logout,
            icon: const Icon(Icons.logout_outlined),
            iconSize: 80,
            color: Theme.of(context).colorScheme.primary,
          )
        ],
      ),
    );
  }
}
