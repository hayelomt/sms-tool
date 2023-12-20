import 'package:flutter_dotenv/flutter_dotenv.dart';

class Constants {
  static String apiUrl = dotenv.env['API_URL']!;
}

class PrefKeys {
  static String user = 'user';
}
