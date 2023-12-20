import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sms_tool/features/attendance/models/attendance_entity.dart';
import 'package:sms_tool/core/providers.dart';
import 'package:sms_tool/features/text_message/models/text_message_entity.dart';

Future<List<Override>> initApp() async {
  await dotenv.load();
  final pref = await SharedPreferences.getInstance();

  final status = await Permission.sms.status;
  if (status.isDenied) {
    await Permission.sms.request();
  }

  final dir = await getApplicationDocumentsDirectory();
  final isar = await Isar.open(
      [AttendanceEntitySchema, TextMessageEntitySchema],
      directory: dir.path);

  final overrides = [
    sharedPreferencesProvider.overrideWithValue(pref),
    isarProvider.overrideWithValue(isar),
  ];

  return overrides;
}
