import 'package:dio/dio.dart';
import 'package:moises/src/domain/models/moises_error.dart';

/// The `MoisesException` class.
class MoisesException implements Exception {
  /// The `StackTrace` parameter.
  final StackTrace? stackTrace;

  /// The `error` parameter
  final dynamic error;

  /// The instance of the `MoisesException` class.
  MoisesException({this.stackTrace, required this.error});

  /// Adapts the error based on the type
  factory MoisesException.onError(StackTrace? stackTrace, dynamic error) {
    if (error is Map<String, dynamic>) {
      error = MoisesError.fromJson(error);
    }

    if (error is DioError) {
      error = MoisesError.fromDioError(error);
    }

    return MoisesException(stackTrace: stackTrace, error: error);
  }
}
