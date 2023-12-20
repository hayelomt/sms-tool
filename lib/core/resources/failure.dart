// import 'package:freezed_annotation/freezed_annotation.dart';

// part 'failure.freezed.dart';

// @freezed
// class Failure implements Exception {
//   const Failure._();

//   const factory Failure.empty() = _EmptyFailure;

//   const factory Failure.error(String message) = _ErrorFailure;

//   const factory Failure.unprocessableEntity({required String message}) =
//       _UnprocessableEntityFailure;

//   const factory Failure.unauthorized() = _UnauthorizedFailure;

//   const factory Failure.serverError(
//           {required final String message,
//           required final Map<String, dynamic>? validationErrors}) =
//       _ServerErrorFailure;

//   const factory Failure.badRequest() = _BadRequestFailure;

//   String get error {
//     return switch (runtimeType) {
//       _$ErrorFailureImpl => (this as _$ErrorFailureImpl).message,
//       _ => toString()
//     };
//   }
// }

import 'package:equatable/equatable.dart';

class Failure extends Equatable {
  final String message;

  const Failure(this.message);

  @override
  List<Object?> get props => [message];
}
