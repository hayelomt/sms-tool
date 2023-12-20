import 'package:isar/isar.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'providers.g.dart';

@riverpod
SharedPreferences sharedPreferences(SharedPreferencesRef ref) {
  throw UnimplementedError('Shared pref not provided');
}

@riverpod
Isar isar(IsarRef ref) {
  throw UnimplementedError('Isar not provided');
}
