// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sms_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SmsState {
  bool get sending => throw _privateConstructorUsedError;
  bool get finished => throw _privateConstructorUsedError;
  List<String> get successIds => throw _privateConstructorUsedError;
  List<String> get failIds => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SmsStateCopyWith<SmsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SmsStateCopyWith<$Res> {
  factory $SmsStateCopyWith(SmsState value, $Res Function(SmsState) then) =
      _$SmsStateCopyWithImpl<$Res, SmsState>;
  @useResult
  $Res call(
      {bool sending,
      bool finished,
      List<String> successIds,
      List<String> failIds});
}

/// @nodoc
class _$SmsStateCopyWithImpl<$Res, $Val extends SmsState>
    implements $SmsStateCopyWith<$Res> {
  _$SmsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sending = null,
    Object? finished = null,
    Object? successIds = null,
    Object? failIds = null,
  }) {
    return _then(_value.copyWith(
      sending: null == sending
          ? _value.sending
          : sending // ignore: cast_nullable_to_non_nullable
              as bool,
      finished: null == finished
          ? _value.finished
          : finished // ignore: cast_nullable_to_non_nullable
              as bool,
      successIds: null == successIds
          ? _value.successIds
          : successIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      failIds: null == failIds
          ? _value.failIds
          : failIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SmsStateImplCopyWith<$Res>
    implements $SmsStateCopyWith<$Res> {
  factory _$$SmsStateImplCopyWith(
          _$SmsStateImpl value, $Res Function(_$SmsStateImpl) then) =
      __$$SmsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool sending,
      bool finished,
      List<String> successIds,
      List<String> failIds});
}

/// @nodoc
class __$$SmsStateImplCopyWithImpl<$Res>
    extends _$SmsStateCopyWithImpl<$Res, _$SmsStateImpl>
    implements _$$SmsStateImplCopyWith<$Res> {
  __$$SmsStateImplCopyWithImpl(
      _$SmsStateImpl _value, $Res Function(_$SmsStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sending = null,
    Object? finished = null,
    Object? successIds = null,
    Object? failIds = null,
  }) {
    return _then(_$SmsStateImpl(
      sending: null == sending
          ? _value.sending
          : sending // ignore: cast_nullable_to_non_nullable
              as bool,
      finished: null == finished
          ? _value.finished
          : finished // ignore: cast_nullable_to_non_nullable
              as bool,
      successIds: null == successIds
          ? _value._successIds
          : successIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      failIds: null == failIds
          ? _value._failIds
          : failIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$SmsStateImpl implements _SmsState {
  const _$SmsStateImpl(
      {required this.sending,
      required this.finished,
      required final List<String> successIds,
      required final List<String> failIds})
      : _successIds = successIds,
        _failIds = failIds;

  @override
  final bool sending;
  @override
  final bool finished;
  final List<String> _successIds;
  @override
  List<String> get successIds {
    if (_successIds is EqualUnmodifiableListView) return _successIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_successIds);
  }

  final List<String> _failIds;
  @override
  List<String> get failIds {
    if (_failIds is EqualUnmodifiableListView) return _failIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_failIds);
  }

  @override
  String toString() {
    return 'SmsState(sending: $sending, finished: $finished, successIds: $successIds, failIds: $failIds)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SmsStateImpl &&
            (identical(other.sending, sending) || other.sending == sending) &&
            (identical(other.finished, finished) ||
                other.finished == finished) &&
            const DeepCollectionEquality()
                .equals(other._successIds, _successIds) &&
            const DeepCollectionEquality().equals(other._failIds, _failIds));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      sending,
      finished,
      const DeepCollectionEquality().hash(_successIds),
      const DeepCollectionEquality().hash(_failIds));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SmsStateImplCopyWith<_$SmsStateImpl> get copyWith =>
      __$$SmsStateImplCopyWithImpl<_$SmsStateImpl>(this, _$identity);
}

abstract class _SmsState implements SmsState {
  const factory _SmsState(
      {required final bool sending,
      required final bool finished,
      required final List<String> successIds,
      required final List<String> failIds}) = _$SmsStateImpl;

  @override
  bool get sending;
  @override
  bool get finished;
  @override
  List<String> get successIds;
  @override
  List<String> get failIds;
  @override
  @JsonKey(ignore: true)
  _$$SmsStateImplCopyWith<_$SmsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
