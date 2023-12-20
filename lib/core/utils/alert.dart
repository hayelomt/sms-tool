import 'package:flutter/material.dart';
import 'package:oktoast/oktoast.dart';

void alertMessage(String message,
    [Duration duration = const Duration(seconds: 3)]) {
  showToast(
    message,
    textPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
    position: ToastPosition.top,
    textStyle: const TextStyle(color: Colors.white),
    radius: 23.0,
    duration: duration,
  );
}

void alertError(String message) {
  showToast(
    message,
    position: ToastPosition.top,
    backgroundColor: Colors.redAccent,
    textStyle: const TextStyle(
        color: Colors.white,
        fontSize: 12,
        fontStyle: FontStyle.normal,
        decoration: TextDecoration.none),
  );
}
