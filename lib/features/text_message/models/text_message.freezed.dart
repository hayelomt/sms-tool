// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'text_message.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TextMessage _$TextMessageFromJson(Map<String, dynamic> json) {
  return _TextMessage.fromJson(json);
}

/// @nodoc
mixin _$TextMessage {
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: "entity_id")
  String get entityId => throw _privateConstructorUsedError;
  @JsonKey(name: "msg_sent")
  bool get msgSent => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;
  @JsonKey(name: "parent_resource_id")
  String? get parentResourceId => throw _privateConstructorUsedError;
  @JsonKey(name: "msg_type")
  String get msgType => throw _privateConstructorUsedError;
  @JsonKey(name: "msg_tags")
  List<String>? get msgTags => throw _privateConstructorUsedError;
  @JsonKey(name: "created_at")
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "updated_at")
  DateTime get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TextMessageCopyWith<TextMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TextMessageCopyWith<$Res> {
  factory $TextMessageCopyWith(
          TextMessage value, $Res Function(TextMessage) then) =
      _$TextMessageCopyWithImpl<$Res, TextMessage>;
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: "entity_id") String entityId,
      @JsonKey(name: "msg_sent") bool msgSent,
      String message,
      String phone,
      @JsonKey(name: "parent_resource_id") String? parentResourceId,
      @JsonKey(name: "msg_type") String msgType,
      @JsonKey(name: "msg_tags") List<String>? msgTags,
      @JsonKey(name: "created_at") DateTime createdAt,
      @JsonKey(name: "updated_at") DateTime updatedAt});
}

/// @nodoc
class _$TextMessageCopyWithImpl<$Res, $Val extends TextMessage>
    implements $TextMessageCopyWith<$Res> {
  _$TextMessageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? entityId = null,
    Object? msgSent = null,
    Object? message = null,
    Object? phone = null,
    Object? parentResourceId = freezed,
    Object? msgType = null,
    Object? msgTags = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      entityId: null == entityId
          ? _value.entityId
          : entityId // ignore: cast_nullable_to_non_nullable
              as String,
      msgSent: null == msgSent
          ? _value.msgSent
          : msgSent // ignore: cast_nullable_to_non_nullable
              as bool,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      parentResourceId: freezed == parentResourceId
          ? _value.parentResourceId
          : parentResourceId // ignore: cast_nullable_to_non_nullable
              as String?,
      msgType: null == msgType
          ? _value.msgType
          : msgType // ignore: cast_nullable_to_non_nullable
              as String,
      msgTags: freezed == msgTags
          ? _value.msgTags
          : msgTags // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TextMessageImplCopyWith<$Res>
    implements $TextMessageCopyWith<$Res> {
  factory _$$TextMessageImplCopyWith(
          _$TextMessageImpl value, $Res Function(_$TextMessageImpl) then) =
      __$$TextMessageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: "entity_id") String entityId,
      @JsonKey(name: "msg_sent") bool msgSent,
      String message,
      String phone,
      @JsonKey(name: "parent_resource_id") String? parentResourceId,
      @JsonKey(name: "msg_type") String msgType,
      @JsonKey(name: "msg_tags") List<String>? msgTags,
      @JsonKey(name: "created_at") DateTime createdAt,
      @JsonKey(name: "updated_at") DateTime updatedAt});
}

/// @nodoc
class __$$TextMessageImplCopyWithImpl<$Res>
    extends _$TextMessageCopyWithImpl<$Res, _$TextMessageImpl>
    implements _$$TextMessageImplCopyWith<$Res> {
  __$$TextMessageImplCopyWithImpl(
      _$TextMessageImpl _value, $Res Function(_$TextMessageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? entityId = null,
    Object? msgSent = null,
    Object? message = null,
    Object? phone = null,
    Object? parentResourceId = freezed,
    Object? msgType = null,
    Object? msgTags = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$TextMessageImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      entityId: null == entityId
          ? _value.entityId
          : entityId // ignore: cast_nullable_to_non_nullable
              as String,
      msgSent: null == msgSent
          ? _value.msgSent
          : msgSent // ignore: cast_nullable_to_non_nullable
              as bool,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      parentResourceId: freezed == parentResourceId
          ? _value.parentResourceId
          : parentResourceId // ignore: cast_nullable_to_non_nullable
              as String?,
      msgType: null == msgType
          ? _value.msgType
          : msgType // ignore: cast_nullable_to_non_nullable
              as String,
      msgTags: freezed == msgTags
          ? _value._msgTags
          : msgTags // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TextMessageImpl implements _TextMessage {
  const _$TextMessageImpl(
      {required this.id,
      @JsonKey(name: "entity_id") required this.entityId,
      @JsonKey(name: "msg_sent") required this.msgSent,
      required this.message,
      required this.phone,
      @JsonKey(name: "parent_resource_id") this.parentResourceId,
      @JsonKey(name: "msg_type") required this.msgType,
      @JsonKey(name: "msg_tags") final List<String>? msgTags,
      @JsonKey(name: "created_at") required this.createdAt,
      @JsonKey(name: "updated_at") required this.updatedAt})
      : _msgTags = msgTags;

  factory _$TextMessageImpl.fromJson(Map<String, dynamic> json) =>
      _$$TextMessageImplFromJson(json);

  @override
  final String id;
  @override
  @JsonKey(name: "entity_id")
  final String entityId;
  @override
  @JsonKey(name: "msg_sent")
  final bool msgSent;
  @override
  final String message;
  @override
  final String phone;
  @override
  @JsonKey(name: "parent_resource_id")
  final String? parentResourceId;
  @override
  @JsonKey(name: "msg_type")
  final String msgType;
  final List<String>? _msgTags;
  @override
  @JsonKey(name: "msg_tags")
  List<String>? get msgTags {
    final value = _msgTags;
    if (value == null) return null;
    if (_msgTags is EqualUnmodifiableListView) return _msgTags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "created_at")
  final DateTime createdAt;
  @override
  @JsonKey(name: "updated_at")
  final DateTime updatedAt;

  @override
  String toString() {
    return 'TextMessage(id: $id, entityId: $entityId, msgSent: $msgSent, message: $message, phone: $phone, parentResourceId: $parentResourceId, msgType: $msgType, msgTags: $msgTags, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TextMessageImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.entityId, entityId) ||
                other.entityId == entityId) &&
            (identical(other.msgSent, msgSent) || other.msgSent == msgSent) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.parentResourceId, parentResourceId) ||
                other.parentResourceId == parentResourceId) &&
            (identical(other.msgType, msgType) || other.msgType == msgType) &&
            const DeepCollectionEquality().equals(other._msgTags, _msgTags) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      entityId,
      msgSent,
      message,
      phone,
      parentResourceId,
      msgType,
      const DeepCollectionEquality().hash(_msgTags),
      createdAt,
      updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TextMessageImplCopyWith<_$TextMessageImpl> get copyWith =>
      __$$TextMessageImplCopyWithImpl<_$TextMessageImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TextMessageImplToJson(
      this,
    );
  }
}

abstract class _TextMessage implements TextMessage {
  const factory _TextMessage(
          {required final String id,
          @JsonKey(name: "entity_id") required final String entityId,
          @JsonKey(name: "msg_sent") required final bool msgSent,
          required final String message,
          required final String phone,
          @JsonKey(name: "parent_resource_id") final String? parentResourceId,
          @JsonKey(name: "msg_type") required final String msgType,
          @JsonKey(name: "msg_tags") final List<String>? msgTags,
          @JsonKey(name: "created_at") required final DateTime createdAt,
          @JsonKey(name: "updated_at") required final DateTime updatedAt}) =
      _$TextMessageImpl;

  factory _TextMessage.fromJson(Map<String, dynamic> json) =
      _$TextMessageImpl.fromJson;

  @override
  String get id;
  @override
  @JsonKey(name: "entity_id")
  String get entityId;
  @override
  @JsonKey(name: "msg_sent")
  bool get msgSent;
  @override
  String get message;
  @override
  String get phone;
  @override
  @JsonKey(name: "parent_resource_id")
  String? get parentResourceId;
  @override
  @JsonKey(name: "msg_type")
  String get msgType;
  @override
  @JsonKey(name: "msg_tags")
  List<String>? get msgTags;
  @override
  @JsonKey(name: "created_at")
  DateTime get createdAt;
  @override
  @JsonKey(name: "updated_at")
  DateTime get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$TextMessageImplCopyWith<_$TextMessageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
