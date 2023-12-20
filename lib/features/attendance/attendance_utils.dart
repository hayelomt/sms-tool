class AttendanceUtil {
  static String parseGenderAbsence(String? gender) =>
      switch (gender?.toLowerCase()) { 'female' => 'አልመጣችም', _ => 'አልመጣም' };

  static String parseAbsenceAdverb(String? gender) =>
      switch (gender?.toLowerCase()) { 'female' => 'ያልመጣችበት', _ => 'ያልመጣበት' };

  static String parseGenderLateness(String? gender) =>
      switch (gender?.toLowerCase()) {
        'female' => 'አርፍዳ ገብታለች',
        _ => 'አርፍዶ ገብቷል'
      };
}
