import 'dart:convert';

import 'package:fpdart/fpdart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sms_tool/features/auth/user.dart';
import 'package:sms_tool/core/core.dart';

part 'auth.g.dart';

@riverpod
class Auth extends _$Auth {
  @override
  User? build() {
    final pref = ref.read(sharedPreferencesProvider);
    final savedString = pref.getString(PrefKeys.user);

    return User.fromPref(savedString);
  }

  Future<Either<Failure, User>> login(String email, String password) async {
    return apiExecutor(
      cb: () async {
        final dio = ref.read(dioProvider);
        final pref = ref.read(sharedPreferencesProvider);

        final res = await dio.post<Map<String, dynamic>>(
          '${Constants.apiUrl}/auth/login',
          data: {
            'email': email,
            'password': password,
          },
        );

        final user = UserResponse.fromJson(res.data!).user;
        pref.setString(PrefKeys.user, jsonEncode(user.toJson()));

        state = user;

        return right(user);
      },
      method: 'Auth.login',
    );
  }

  logout() {
    final pref = ref.read(sharedPreferencesProvider);

    state = null;
    pref.remove(PrefKeys.user);
  }
}
