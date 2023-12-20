// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'attendance_message.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AttendanceMessage _$AttendanceMessageFromJson(Map<String, dynamic> json) {
  return _AttendanceMessage.fromJson(json);
}

/// @nodoc
mixin _$AttendanceMessage {
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: "student_id")
  String get studentId => throw _privateConstructorUsedError;
  @JsonKey(name: "user_id")
  String get userId => throw _privateConstructorUsedError;
  @JsonKey(name: "academic_year_id")
  String get academicYearId => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  DateTime get date => throw _privateConstructorUsedError;
  @JsonKey(name: "absent_reason")
  String get absentReason => throw _privateConstructorUsedError;
  @JsonKey(name: "msg_sent")
  int get msgSent => throw _privateConstructorUsedError;
  @JsonKey(name: "created_at")
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "updated_at")
  DateTime get updatedAt => throw _privateConstructorUsedError;
  Student get student => throw _privateConstructorUsedError;
  String get day => throw _privateConstructorUsedError;
  String get ethiopianDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AttendanceMessageCopyWith<AttendanceMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttendanceMessageCopyWith<$Res> {
  factory $AttendanceMessageCopyWith(
          AttendanceMessage value, $Res Function(AttendanceMessage) then) =
      _$AttendanceMessageCopyWithImpl<$Res, AttendanceMessage>;
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: "student_id") String studentId,
      @JsonKey(name: "user_id") String userId,
      @JsonKey(name: "academic_year_id") String academicYearId,
      String status,
      DateTime date,
      @JsonKey(name: "absent_reason") String absentReason,
      @JsonKey(name: "msg_sent") int msgSent,
      @JsonKey(name: "created_at") DateTime createdAt,
      @JsonKey(name: "updated_at") DateTime updatedAt,
      Student student,
      String day,
      String ethiopianDate});

  $StudentCopyWith<$Res> get student;
}

/// @nodoc
class _$AttendanceMessageCopyWithImpl<$Res, $Val extends AttendanceMessage>
    implements $AttendanceMessageCopyWith<$Res> {
  _$AttendanceMessageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? studentId = null,
    Object? userId = null,
    Object? academicYearId = null,
    Object? status = null,
    Object? date = null,
    Object? absentReason = null,
    Object? msgSent = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? student = null,
    Object? day = null,
    Object? ethiopianDate = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      studentId: null == studentId
          ? _value.studentId
          : studentId // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      academicYearId: null == academicYearId
          ? _value.academicYearId
          : academicYearId // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      absentReason: null == absentReason
          ? _value.absentReason
          : absentReason // ignore: cast_nullable_to_non_nullable
              as String,
      msgSent: null == msgSent
          ? _value.msgSent
          : msgSent // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      student: null == student
          ? _value.student
          : student // ignore: cast_nullable_to_non_nullable
              as Student,
      day: null == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as String,
      ethiopianDate: null == ethiopianDate
          ? _value.ethiopianDate
          : ethiopianDate // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $StudentCopyWith<$Res> get student {
    return $StudentCopyWith<$Res>(_value.student, (value) {
      return _then(_value.copyWith(student: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AttendanceMessageImplCopyWith<$Res>
    implements $AttendanceMessageCopyWith<$Res> {
  factory _$$AttendanceMessageImplCopyWith(_$AttendanceMessageImpl value,
          $Res Function(_$AttendanceMessageImpl) then) =
      __$$AttendanceMessageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: "student_id") String studentId,
      @JsonKey(name: "user_id") String userId,
      @JsonKey(name: "academic_year_id") String academicYearId,
      String status,
      DateTime date,
      @JsonKey(name: "absent_reason") String absentReason,
      @JsonKey(name: "msg_sent") int msgSent,
      @JsonKey(name: "created_at") DateTime createdAt,
      @JsonKey(name: "updated_at") DateTime updatedAt,
      Student student,
      String day,
      String ethiopianDate});

  @override
  $StudentCopyWith<$Res> get student;
}

/// @nodoc
class __$$AttendanceMessageImplCopyWithImpl<$Res>
    extends _$AttendanceMessageCopyWithImpl<$Res, _$AttendanceMessageImpl>
    implements _$$AttendanceMessageImplCopyWith<$Res> {
  __$$AttendanceMessageImplCopyWithImpl(_$AttendanceMessageImpl _value,
      $Res Function(_$AttendanceMessageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? studentId = null,
    Object? userId = null,
    Object? academicYearId = null,
    Object? status = null,
    Object? date = null,
    Object? absentReason = null,
    Object? msgSent = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? student = null,
    Object? day = null,
    Object? ethiopianDate = null,
  }) {
    return _then(_$AttendanceMessageImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      studentId: null == studentId
          ? _value.studentId
          : studentId // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      academicYearId: null == academicYearId
          ? _value.academicYearId
          : academicYearId // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      absentReason: null == absentReason
          ? _value.absentReason
          : absentReason // ignore: cast_nullable_to_non_nullable
              as String,
      msgSent: null == msgSent
          ? _value.msgSent
          : msgSent // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      student: null == student
          ? _value.student
          : student // ignore: cast_nullable_to_non_nullable
              as Student,
      day: null == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as String,
      ethiopianDate: null == ethiopianDate
          ? _value.ethiopianDate
          : ethiopianDate // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AttendanceMessageImpl implements _AttendanceMessage {
  const _$AttendanceMessageImpl(
      {required this.id,
      @JsonKey(name: "student_id") required this.studentId,
      @JsonKey(name: "user_id") required this.userId,
      @JsonKey(name: "academic_year_id") required this.academicYearId,
      required this.status,
      required this.date,
      @JsonKey(name: "absent_reason") required this.absentReason,
      @JsonKey(name: "msg_sent") required this.msgSent,
      @JsonKey(name: "created_at") required this.createdAt,
      @JsonKey(name: "updated_at") required this.updatedAt,
      required this.student,
      required this.day,
      required this.ethiopianDate});

  factory _$AttendanceMessageImpl.fromJson(Map<String, dynamic> json) =>
      _$$AttendanceMessageImplFromJson(json);

  @override
  final String id;
  @override
  @JsonKey(name: "student_id")
  final String studentId;
  @override
  @JsonKey(name: "user_id")
  final String userId;
  @override
  @JsonKey(name: "academic_year_id")
  final String academicYearId;
  @override
  final String status;
  @override
  final DateTime date;
  @override
  @JsonKey(name: "absent_reason")
  final String absentReason;
  @override
  @JsonKey(name: "msg_sent")
  final int msgSent;
  @override
  @JsonKey(name: "created_at")
  final DateTime createdAt;
  @override
  @JsonKey(name: "updated_at")
  final DateTime updatedAt;
  @override
  final Student student;
  @override
  final String day;
  @override
  final String ethiopianDate;

  @override
  String toString() {
    return 'AttendanceMessage(id: $id, studentId: $studentId, userId: $userId, academicYearId: $academicYearId, status: $status, date: $date, absentReason: $absentReason, msgSent: $msgSent, createdAt: $createdAt, updatedAt: $updatedAt, student: $student, day: $day, ethiopianDate: $ethiopianDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AttendanceMessageImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.studentId, studentId) ||
                other.studentId == studentId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.academicYearId, academicYearId) ||
                other.academicYearId == academicYearId) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.absentReason, absentReason) ||
                other.absentReason == absentReason) &&
            (identical(other.msgSent, msgSent) || other.msgSent == msgSent) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.student, student) || other.student == student) &&
            (identical(other.day, day) || other.day == day) &&
            (identical(other.ethiopianDate, ethiopianDate) ||
                other.ethiopianDate == ethiopianDate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      studentId,
      userId,
      academicYearId,
      status,
      date,
      absentReason,
      msgSent,
      createdAt,
      updatedAt,
      student,
      day,
      ethiopianDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AttendanceMessageImplCopyWith<_$AttendanceMessageImpl> get copyWith =>
      __$$AttendanceMessageImplCopyWithImpl<_$AttendanceMessageImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AttendanceMessageImplToJson(
      this,
    );
  }
}

abstract class _AttendanceMessage implements AttendanceMessage {
  const factory _AttendanceMessage(
      {required final String id,
      @JsonKey(name: "student_id") required final String studentId,
      @JsonKey(name: "user_id") required final String userId,
      @JsonKey(name: "academic_year_id") required final String academicYearId,
      required final String status,
      required final DateTime date,
      @JsonKey(name: "absent_reason") required final String absentReason,
      @JsonKey(name: "msg_sent") required final int msgSent,
      @JsonKey(name: "created_at") required final DateTime createdAt,
      @JsonKey(name: "updated_at") required final DateTime updatedAt,
      required final Student student,
      required final String day,
      required final String ethiopianDate}) = _$AttendanceMessageImpl;

  factory _AttendanceMessage.fromJson(Map<String, dynamic> json) =
      _$AttendanceMessageImpl.fromJson;

  @override
  String get id;
  @override
  @JsonKey(name: "student_id")
  String get studentId;
  @override
  @JsonKey(name: "user_id")
  String get userId;
  @override
  @JsonKey(name: "academic_year_id")
  String get academicYearId;
  @override
  String get status;
  @override
  DateTime get date;
  @override
  @JsonKey(name: "absent_reason")
  String get absentReason;
  @override
  @JsonKey(name: "msg_sent")
  int get msgSent;
  @override
  @JsonKey(name: "created_at")
  DateTime get createdAt;
  @override
  @JsonKey(name: "updated_at")
  DateTime get updatedAt;
  @override
  Student get student;
  @override
  String get day;
  @override
  String get ethiopianDate;
  @override
  @JsonKey(ignore: true)
  _$$AttendanceMessageImplCopyWith<_$AttendanceMessageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Student _$StudentFromJson(Map<String, dynamic> json) {
  return _Student.fromJson(json);
}

/// @nodoc
mixin _$Student {
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: "first_name")
  String get firstName => throw _privateConstructorUsedError;
  @JsonKey(name: "father_name")
  String get fatherName => throw _privateConstructorUsedError;
  String get gender => throw _privateConstructorUsedError;
  @JsonKey(name: "grand_father_name")
  String? get grandFatherName => throw _privateConstructorUsedError;
  @JsonKey(name: "id_number")
  String? get idNumber => throw _privateConstructorUsedError;
  @JsonKey(name: "id_counter")
  int get idCounter => throw _privateConstructorUsedError;
  @JsonKey(name: "primary_phone")
  String? get primaryPhone => throw _privateConstructorUsedError;
  String? get img => throw _privateConstructorUsedError;
  @JsonKey(name: "scholarship_amount")
  int get scholarshipAmount => throw _privateConstructorUsedError;
  @JsonKey(name: "date_of_birth")
  DateTime? get dateOfBirth => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: "created_at")
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "updated_at")
  DateTime get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StudentCopyWith<Student> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StudentCopyWith<$Res> {
  factory $StudentCopyWith(Student value, $Res Function(Student) then) =
      _$StudentCopyWithImpl<$Res, Student>;
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: "first_name") String firstName,
      @JsonKey(name: "father_name") String fatherName,
      String gender,
      @JsonKey(name: "grand_father_name") String? grandFatherName,
      @JsonKey(name: "id_number") String? idNumber,
      @JsonKey(name: "id_counter") int idCounter,
      @JsonKey(name: "primary_phone") String? primaryPhone,
      String? img,
      @JsonKey(name: "scholarship_amount") int scholarshipAmount,
      @JsonKey(name: "date_of_birth") DateTime? dateOfBirth,
      String? status,
      @JsonKey(name: "created_at") DateTime createdAt,
      @JsonKey(name: "updated_at") DateTime updatedAt});
}

/// @nodoc
class _$StudentCopyWithImpl<$Res, $Val extends Student>
    implements $StudentCopyWith<$Res> {
  _$StudentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? firstName = null,
    Object? fatherName = null,
    Object? gender = null,
    Object? grandFatherName = freezed,
    Object? idNumber = freezed,
    Object? idCounter = null,
    Object? primaryPhone = freezed,
    Object? img = freezed,
    Object? scholarshipAmount = null,
    Object? dateOfBirth = freezed,
    Object? status = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      fatherName: null == fatherName
          ? _value.fatherName
          : fatherName // ignore: cast_nullable_to_non_nullable
              as String,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String,
      grandFatherName: freezed == grandFatherName
          ? _value.grandFatherName
          : grandFatherName // ignore: cast_nullable_to_non_nullable
              as String?,
      idNumber: freezed == idNumber
          ? _value.idNumber
          : idNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      idCounter: null == idCounter
          ? _value.idCounter
          : idCounter // ignore: cast_nullable_to_non_nullable
              as int,
      primaryPhone: freezed == primaryPhone
          ? _value.primaryPhone
          : primaryPhone // ignore: cast_nullable_to_non_nullable
              as String?,
      img: freezed == img
          ? _value.img
          : img // ignore: cast_nullable_to_non_nullable
              as String?,
      scholarshipAmount: null == scholarshipAmount
          ? _value.scholarshipAmount
          : scholarshipAmount // ignore: cast_nullable_to_non_nullable
              as int,
      dateOfBirth: freezed == dateOfBirth
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
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
abstract class _$$StudentImplCopyWith<$Res> implements $StudentCopyWith<$Res> {
  factory _$$StudentImplCopyWith(
          _$StudentImpl value, $Res Function(_$StudentImpl) then) =
      __$$StudentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: "first_name") String firstName,
      @JsonKey(name: "father_name") String fatherName,
      String gender,
      @JsonKey(name: "grand_father_name") String? grandFatherName,
      @JsonKey(name: "id_number") String? idNumber,
      @JsonKey(name: "id_counter") int idCounter,
      @JsonKey(name: "primary_phone") String? primaryPhone,
      String? img,
      @JsonKey(name: "scholarship_amount") int scholarshipAmount,
      @JsonKey(name: "date_of_birth") DateTime? dateOfBirth,
      String? status,
      @JsonKey(name: "created_at") DateTime createdAt,
      @JsonKey(name: "updated_at") DateTime updatedAt});
}

/// @nodoc
class __$$StudentImplCopyWithImpl<$Res>
    extends _$StudentCopyWithImpl<$Res, _$StudentImpl>
    implements _$$StudentImplCopyWith<$Res> {
  __$$StudentImplCopyWithImpl(
      _$StudentImpl _value, $Res Function(_$StudentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? firstName = null,
    Object? fatherName = null,
    Object? gender = null,
    Object? grandFatherName = freezed,
    Object? idNumber = freezed,
    Object? idCounter = null,
    Object? primaryPhone = freezed,
    Object? img = freezed,
    Object? scholarshipAmount = null,
    Object? dateOfBirth = freezed,
    Object? status = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$StudentImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      fatherName: null == fatherName
          ? _value.fatherName
          : fatherName // ignore: cast_nullable_to_non_nullable
              as String,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String,
      grandFatherName: freezed == grandFatherName
          ? _value.grandFatherName
          : grandFatherName // ignore: cast_nullable_to_non_nullable
              as String?,
      idNumber: freezed == idNumber
          ? _value.idNumber
          : idNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      idCounter: null == idCounter
          ? _value.idCounter
          : idCounter // ignore: cast_nullable_to_non_nullable
              as int,
      primaryPhone: freezed == primaryPhone
          ? _value.primaryPhone
          : primaryPhone // ignore: cast_nullable_to_non_nullable
              as String?,
      img: freezed == img
          ? _value.img
          : img // ignore: cast_nullable_to_non_nullable
              as String?,
      scholarshipAmount: null == scholarshipAmount
          ? _value.scholarshipAmount
          : scholarshipAmount // ignore: cast_nullable_to_non_nullable
              as int,
      dateOfBirth: freezed == dateOfBirth
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
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
class _$StudentImpl implements _Student {
  const _$StudentImpl(
      {required this.id,
      @JsonKey(name: "first_name") required this.firstName,
      @JsonKey(name: "father_name") required this.fatherName,
      required this.gender,
      @JsonKey(name: "grand_father_name") this.grandFatherName,
      @JsonKey(name: "id_number") this.idNumber,
      @JsonKey(name: "id_counter") required this.idCounter,
      @JsonKey(name: "primary_phone") this.primaryPhone,
      this.img,
      @JsonKey(name: "scholarship_amount") required this.scholarshipAmount,
      @JsonKey(name: "date_of_birth") this.dateOfBirth,
      required this.status,
      @JsonKey(name: "created_at") required this.createdAt,
      @JsonKey(name: "updated_at") required this.updatedAt});

  factory _$StudentImpl.fromJson(Map<String, dynamic> json) =>
      _$$StudentImplFromJson(json);

  @override
  final String id;
  @override
  @JsonKey(name: "first_name")
  final String firstName;
  @override
  @JsonKey(name: "father_name")
  final String fatherName;
  @override
  final String gender;
  @override
  @JsonKey(name: "grand_father_name")
  final String? grandFatherName;
  @override
  @JsonKey(name: "id_number")
  final String? idNumber;
  @override
  @JsonKey(name: "id_counter")
  final int idCounter;
  @override
  @JsonKey(name: "primary_phone")
  final String? primaryPhone;
  @override
  final String? img;
  @override
  @JsonKey(name: "scholarship_amount")
  final int scholarshipAmount;
  @override
  @JsonKey(name: "date_of_birth")
  final DateTime? dateOfBirth;
  @override
  final String? status;
  @override
  @JsonKey(name: "created_at")
  final DateTime createdAt;
  @override
  @JsonKey(name: "updated_at")
  final DateTime updatedAt;

  @override
  String toString() {
    return 'Student(id: $id, firstName: $firstName, fatherName: $fatherName, gender: $gender, grandFatherName: $grandFatherName, idNumber: $idNumber, idCounter: $idCounter, primaryPhone: $primaryPhone, img: $img, scholarshipAmount: $scholarshipAmount, dateOfBirth: $dateOfBirth, status: $status, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StudentImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.fatherName, fatherName) ||
                other.fatherName == fatherName) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.grandFatherName, grandFatherName) ||
                other.grandFatherName == grandFatherName) &&
            (identical(other.idNumber, idNumber) ||
                other.idNumber == idNumber) &&
            (identical(other.idCounter, idCounter) ||
                other.idCounter == idCounter) &&
            (identical(other.primaryPhone, primaryPhone) ||
                other.primaryPhone == primaryPhone) &&
            (identical(other.img, img) || other.img == img) &&
            (identical(other.scholarshipAmount, scholarshipAmount) ||
                other.scholarshipAmount == scholarshipAmount) &&
            (identical(other.dateOfBirth, dateOfBirth) ||
                other.dateOfBirth == dateOfBirth) &&
            (identical(other.status, status) || other.status == status) &&
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
      firstName,
      fatherName,
      gender,
      grandFatherName,
      idNumber,
      idCounter,
      primaryPhone,
      img,
      scholarshipAmount,
      dateOfBirth,
      status,
      createdAt,
      updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StudentImplCopyWith<_$StudentImpl> get copyWith =>
      __$$StudentImplCopyWithImpl<_$StudentImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StudentImplToJson(
      this,
    );
  }
}

abstract class _Student implements Student {
  const factory _Student(
      {required final String id,
      @JsonKey(name: "first_name") required final String firstName,
      @JsonKey(name: "father_name") required final String fatherName,
      required final String gender,
      @JsonKey(name: "grand_father_name") final String? grandFatherName,
      @JsonKey(name: "id_number") final String? idNumber,
      @JsonKey(name: "id_counter") required final int idCounter,
      @JsonKey(name: "primary_phone") final String? primaryPhone,
      final String? img,
      @JsonKey(name: "scholarship_amount") required final int scholarshipAmount,
      @JsonKey(name: "date_of_birth") final DateTime? dateOfBirth,
      required final String? status,
      @JsonKey(name: "created_at") required final DateTime createdAt,
      @JsonKey(name: "updated_at")
      required final DateTime updatedAt}) = _$StudentImpl;

  factory _Student.fromJson(Map<String, dynamic> json) = _$StudentImpl.fromJson;

  @override
  String get id;
  @override
  @JsonKey(name: "first_name")
  String get firstName;
  @override
  @JsonKey(name: "father_name")
  String get fatherName;
  @override
  String get gender;
  @override
  @JsonKey(name: "grand_father_name")
  String? get grandFatherName;
  @override
  @JsonKey(name: "id_number")
  String? get idNumber;
  @override
  @JsonKey(name: "id_counter")
  int get idCounter;
  @override
  @JsonKey(name: "primary_phone")
  String? get primaryPhone;
  @override
  String? get img;
  @override
  @JsonKey(name: "scholarship_amount")
  int get scholarshipAmount;
  @override
  @JsonKey(name: "date_of_birth")
  DateTime? get dateOfBirth;
  @override
  String? get status;
  @override
  @JsonKey(name: "created_at")
  DateTime get createdAt;
  @override
  @JsonKey(name: "updated_at")
  DateTime get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$StudentImplCopyWith<_$StudentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
