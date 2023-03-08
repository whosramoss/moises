import 'package:moises/src/domain/exception/moises_exception.dart';
import 'package:moises/src/infrastructure/connect/i_moises_connect.dart';
import 'package:dio/dio.dart';

/// Implementation class for `MoisesConnect` method requests
class MoisesConnect implements IMoisesConnect {
  final Dio _dio;

  /// The instance of the `MoisesConnect` class.
  MoisesConnect(this._dio);

  /// Initialize `MoisesConnect` method
  factory MoisesConnect.init(String apiKey) {
    final defaultDio = Dio();

    defaultDio.options = BaseOptions(
      baseUrl: 'https://developer-api.moises.ai/api/',
      headers: {'Authorization': apiKey},
    );

    return MoisesConnect(defaultDio);
  }

  @override
  Future<Response<dynamic>> get(
    String path, {
    Map<String, dynamic>? headers,
    Map<String, dynamic>? queryParameters,
    bool responseTypeBytes = false,
  }) async {
    try {
      return await _dio.get(
        path,
        queryParameters: queryParameters,
        options: Options(
          headers: headers,
          responseType: responseTypeBytes ? ResponseType.bytes : null,
        ),
      );
    } catch (error, stacktrace) {
      throw MoisesException.onError(stacktrace, error);
    }
  }

  @override
  Future<Response<dynamic>> post(
    String path, {
    data,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? queryParameters,
    bool responseTypeBytes = false,
  }) async {
    try {
      return await _dio.post(
        path,
        data: data,
        queryParameters: queryParameters,
        options: Options(
          headers: headers,
          responseType: responseTypeBytes ? ResponseType.bytes : null,
        ),
      );
    } catch (error, stacktrace) {
      throw MoisesException.onError(stacktrace, error);
    }
  }

  @override
  Future<Response<dynamic>> put(
    String path, {
    data,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? queryParameters,
    bool responseTypeBytes = false,
  }) async {
    try {
      return await _dio.put(
        path,
        data: data,
        queryParameters: queryParameters,
        options: Options(
          headers: headers,
          responseType: responseTypeBytes ? ResponseType.bytes : null,
        ),
      );
    } catch (error, stacktrace) {
      throw MoisesException.onError(stacktrace, error);
    }
  }

  @override
  Future<Response<dynamic>> patch(
    String path, {
    data,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? queryParameters,
    bool responseTypeBytes = false,
  }) async {
    try {
      return await _dio.patch(
        path,
        data: data,
        queryParameters: queryParameters,
        options: Options(
          headers: headers,
          responseType: responseTypeBytes ? ResponseType.bytes : null,
        ),
      );
    } catch (error, stacktrace) {
      throw MoisesException.onError(stacktrace, error);
    }
  }

  @override
  Future<Response<dynamic>> delete(
    String path, {
    data,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? queryParameters,
    bool responseTypeBytes = false,
  }) async {
    try {
      return await _dio.delete(
        path,
        data: data,
        queryParameters: queryParameters,
        options: Options(
          headers: headers,
          responseType: responseTypeBytes ? ResponseType.bytes : null,
        ),
      );
    } catch (error, stacktrace) {
      throw MoisesException.onError(stacktrace, error);
    }
  }
}
