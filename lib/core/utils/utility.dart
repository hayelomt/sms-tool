int fastHash(String string) {
  var hash = 0xcbf29ce484222325;

  var i = 0;
  while (i < string.length) {
    final codeUnit = string.codeUnitAt(i++);
    hash ^= codeUnit >> 8;
    hash *= 0x100000001b3;
    hash ^= codeUnit & 0xFF;
    hash *= 0x100000001b3;
  }

  return hash;
}

const kWeekDays = {
  1: 'ሰኞ',
  2: 'ማክሰኞ',
  3: 'ረቡዕ',
  4: 'ሐሙስ',
  5: 'አርብ',
  6: 'ቅዳሜ',
  7: 'እሁድ'
};
