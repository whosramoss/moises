import 'dart:convert';
import 'dart:io';

/// Get Moises Local Keys
class MoisesLocalKey {
  MoisesLocalKey._();

  /// Key variable
  static String key = 'API_KEY';

  /// FileName variable
  static String fileName = '.env.json';

  /// Create a file [.env.json], inside the example folder and add your Key in this format:
  /// `{"API_KEY":"00000000-0000-0000-0000-000000000000"}`
  static Future<String> get() async {
    try {
      final File file = File(fileName);
      final String content = await file.readAsString();
      final Map<String, dynamic> json = jsonDecode(content) as Map<String, dynamic>;
      final bool hasKey = json.keys.contains(key);
      if (!hasKey) return '';
      return json[key] as String;
    } catch (e) {
      return '';
    }
  }
}
