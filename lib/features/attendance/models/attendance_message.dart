import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:sms_tool/core/core.dart';

import '../attendance_utils.dart';

part 'attendance_message.freezed.dart';
part 'attendance_message.g.dart';

@freezed
class AttendanceMessage with _$AttendanceMessage {
  const factory AttendanceMessage({
    required String id,
    @JsonKey(name: "student_id") required String studentId,
    @JsonKey(name: "user_id") required String userId,
    @JsonKey(name: "academic_year_id") required String academicYearId,
    required String status,
    required DateTime date,
    @JsonKey(name: "absent_reason") required String absentReason,
    @JsonKey(name: "msg_sent") required int msgSent,
    @JsonKey(name: "created_at") required DateTime createdAt,
    @JsonKey(name: "updated_at") required DateTime updatedAt,
    required Student student,
    required String day,
    required String ethiopianDate,
  }) = _AttendanceMessage;

  factory AttendanceMessage.fromJson(Map<String, dynamic> json) =>
      _$AttendanceMessageFromJson(json);
}

@freezed
class Student with _$Student {
  const factory Student({
    required String id,
    @JsonKey(name: "first_name") required String firstName,
    @JsonKey(name: "father_name") required String fatherName,
    required String gender,
    @JsonKey(name: "grand_father_name") String? grandFatherName,
    @JsonKey(name: "id_number") String? idNumber,
    @JsonKey(name: "id_counter") required int idCounter,
    @JsonKey(name: "primary_phone") String? primaryPhone,
    String? img,
    @JsonKey(name: "scholarship_amount") required int scholarshipAmount,
    @JsonKey(name: "date_of_birth") DateTime? dateOfBirth,
    required String? status,
    @JsonKey(name: "created_at") required DateTime createdAt,
    @JsonKey(name: "updated_at") required DateTime updatedAt,
  }) = _Student;

  factory Student.fromJson(Map<String, dynamic> json) =>
      _$StudentFromJson(json);
}

extension StudentName on Student {
  String get fullName => '$firstName $fatherName';
}

extension AttendanceFormat on AttendanceMessage {
  String get formattedMessage => switch (status) {
        'Absent' =>
          '''ውድ የተማሪ ${student.fullName} ወላጅ ልጅዎ ${kWeekDays[createdAt.weekday] ?? ''}  በ $ethiopianDate  ወደ ት/ቤት ${AttendanceUtil.parseGenderAbsence(student.gender)}። ${AttendanceUtil.parseAbsenceAdverb(student.gender)} ምክንያት ካለ ለቢሮ ያሳውቁ።\nStrivers Academy\n0118 829390/91\n0911 685076''',
        'Late' =>
          '''ውድ የተማሪ ${student.fullName} ወላጅ ልጅዎ ${kWeekDays[createdAt.weekday] ?? ''}  በ $ethiopianDate  ወደ ት/ቤት ${AttendanceUtil.parseGenderLateness(student.gender)}። በሌላ ቀን ይስተካከል\nStrivers Academy\n0118 829390/91\n0911 685076''',
        _ => ''
      };
}
