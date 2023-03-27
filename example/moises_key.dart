import 'dart:convert';
import 'dart:io';

/// Get Moises Local Keys
class MoisesKey {
  MoisesKey._();

  /// Key variable
  static String key = 'MOISES_DEVELOPER_API_KEY';

  /// Create a file (example: ".env.json"), inside the example folder and add your Key in this format:
  /// `{
  ///     "MOISES_DEVELOPER_API_KEY" : "00000000-0000-0000-0000-000000000000"
  /// }`
  static Future<String> get() async {
    try {
      const String fileName = '.env.json';
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
