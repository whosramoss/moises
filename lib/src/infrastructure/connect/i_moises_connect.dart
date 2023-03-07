/// Interface class for `MoisesConnect` method requests
abstract class IMoisesConnect {
  /// GET Request Method
  Future<dynamic> get(
    String path, {
    Map<String, dynamic>? headers,
    Map<String, dynamic>? queryParameters,
  });

  /// POST Request Method
  Future<dynamic> post(
    String path, {
    data,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? queryParameters,
  });

  /// PUT Request Method
  Future<dynamic> put(
    String path, {
    data,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? queryParameters,
  });

  /// PATCH Request Method
  Future<dynamic> patch(
    String path, {
    data,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? queryParameters,
  });

  /// DELETE Request Method
  Future<dynamic> delete(
    String path, {
    data,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? queryParameters,
  });
}
