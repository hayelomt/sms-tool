import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sms_tool/core/app/app.dart';
import 'package:sms_tool/core/app/init.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final overrides = await initApp();

  runApp(ProviderScope(
    overrides: overrides,
    child: const RootApp(),
  ));
}
