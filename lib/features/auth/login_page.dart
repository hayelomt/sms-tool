import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sms_tool/features/auth/auth.dart';
import 'package:sms_tool/core/core.dart';

class LoginPage extends HookConsumerWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pendingLogin = useState<Future<void>?>(null);
    final snapshot = useFuture(pendingLogin.value);
    final emailCtrl = useTextEditingController(text: '');
    final pwdCtrl = useTextEditingController(text: '');

    final errored = snapshot.hasError &&
        snapshot.connectionState != ConnectionState.waiting;

    return Scaffold(
      appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: const Text('Login')),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 80),
              TextField(
                controller: emailCtrl,
                decoration: InputDecoration(
                  labelText: 'Email',
                  errorText: errored ? snapshot.error.toString() : null,
                ),
              ),
              const SizedBox(height: 20),
              TextField(
                controller: pwdCtrl,
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Password',
                  errorText: errored ? snapshot.error.toString() : null,
                ),
              ),
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                            errored ? Colors.red : null)),
                    onPressed:
                        snapshot.connectionState == ConnectionState.waiting
                            ? null
                            : () async {
                                final login = ref
                                    .read(authProvider.notifier)
                                    .login(emailCtrl.text, pwdCtrl.text);
                                pendingLogin.value = login;

                                (await login).fold((l) => alertError(l.message),
                                    (r) {
                                  //
                                });
                              },
                    child: const Text('Login'),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
