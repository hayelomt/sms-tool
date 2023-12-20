import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:fpdart/fpdart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sms_tool/core/resources/failure.dart';
import 'package:sms_tool/features/auth/auth.dart';

part 'dio.g.dart';

@riverpod
Dio dio(DioRef ref) {
  final user = ref.read(authProvider);
  final Map<String, dynamic> headers = {};

  if (user != null) {
    headers['Authorization'] = 'Bearer ${user.token}';
  }

  return Dio(
    BaseOptions(
      receiveTimeout: const Duration(seconds: 30),
      sendTimeout: const Duration(minutes: 2),
      headers: headers,
    ),
  );
}

String _parseDioException(DioException exception) => switch (exception.type) {
      DioExceptionType.cancel => 'Request to the server was cancelled.',
      DioExceptionType.connectionTimeout => 'Connection timed out.',
      DioExceptionType.connectionError => 'Connection could not be established',
      DioExceptionType.receiveTimeout => 'Receiving timeout occurred.',
      DioExceptionType.sendTimeout => 'Request send timeout.',
      _ => _parseUnknown(exception),
    };

String _parseBadResponse(DioException dioErr) {
  final Map<String, dynamic> messages = dioErr.response?.data ?? {};

  return messages['errors']?.values.join(', ') ?? 'Something went wrong';
}

String _parseUnknown(DioException dioErr) {
  if (dioErr.message?.contains('SocketException') == true) {
    return 'Internet connection could not be established';
  }

  return switch (dioErr.response?.statusCode) {
    400 || 422 => _parseBadResponse(dioErr),
    401 => 'Authentication failed.',
    403 =>
      'The authenticated user is not allowed to access the specified API endpoint.',
    404 => 'The requested resource does not exist.',
    405 =>
      'Method not allowed. Please check the Allow header for the allowed HTTP methods.',
    415 =>
      'Unsupported media type. The requested content type or version number is invalid.',
    429 => 'Too many requests.',
    500 => 'Internal server error.',
    _ => 'Unknown Error occurred',
  };
}

Future<Either<Failure, T>> apiExecutor<T>(
    {required Future<Either<Failure, T>> Function() cb,
    required String method}) async {
  try {
    return await cb();
  } on DioException catch (dioErr) {
    debugPrint(
        '$method:API_ERR $dioErr - ${dioErr.error} ${dioErr.response?.statusCode} ${dioErr.type}');
    return left(Failure(_parseDioException(dioErr)));
  } catch (err) {
    debugPrint('$method:ERR $err');
    return left(Failure(err.toString()));
  }
}
