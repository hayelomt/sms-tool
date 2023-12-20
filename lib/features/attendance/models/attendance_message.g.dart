// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attendance_message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AttendanceMessageImpl _$$AttendanceMessageImplFromJson(
        Map<String, dynamic> json) =>
    _$AttendanceMessageImpl(
      id: json['id'] as String,
      studentId: json['student_id'] as String,
      userId: json['user_id'] as String,
      academicYearId: json['academic_year_id'] as String,
      status: json['status'] as String,
      date: DateTime.parse(json['date'] as String),
      absentReason: json['absent_reason'] as String,
      msgSent: json['msg_sent'] as int,
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
      student: Student.fromJson(json['student'] as Map<String, dynamic>),
      day: json['day'] as String,
      ethiopianDate: json['ethiopianDate'] as String,
    );

Map<String, dynamic> _$$AttendanceMessageImplToJson(
        _$AttendanceMessageImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'student_id': instance.studentId,
      'user_id': instance.userId,
      'academic_year_id': instance.academicYearId,
      'status': instance.status,
      'date': instance.date.toIso8601String(),
      'absent_reason': instance.absentReason,
      'msg_sent': instance.msgSent,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
      'student': instance.student,
      'day': instance.day,
      'ethiopianDate': instance.ethiopianDate,
    };

_$StudentImpl _$$StudentImplFromJson(Map<String, dynamic> json) =>
    _$StudentImpl(
      id: json['id'] as String,
      firstName: json['first_name'] as String,
      fatherName: json['father_name'] as String,
      gender: json['gender'] as String,
      grandFatherName: json['grand_father_name'] as String?,
      idNumber: json['id_number'] as String?,
      idCounter: json['id_counter'] as int,
      primaryPhone: json['primary_phone'] as String?,
      img: json['img'] as String?,
      scholarshipAmount: json['scholarship_amount'] as int,
      dateOfBirth: json['date_of_birth'] == null
          ? null
          : DateTime.parse(json['date_of_birth'] as String),
      status: json['status'] as String?,
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$$StudentImplToJson(_$StudentImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'first_name': instance.firstName,
      'father_name': instance.fatherName,
      'gender': instance.gender,
      'grand_father_name': instance.grandFatherName,
      'id_number': instance.idNumber,
      'id_counter': instance.idCounter,
      'primary_phone': instance.primaryPhone,
      'img': instance.img,
      'scholarship_amount': instance.scholarshipAmount,
      'date_of_birth': instance.dateOfBirth?.toIso8601String(),
      'status': instance.status,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
    };
