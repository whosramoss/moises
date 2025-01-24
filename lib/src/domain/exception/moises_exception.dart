import 'package:dio/dio.dart';
import 'package:moises/src/domain/models/moises_error.dart';

/// The `MoisesException` class.
class MoisesException implements Exception {
  /// The `StackTrace` parameter.
  final StackTrace? stackTrace;

  /// The `MoisesError` parameter
  final MoisesError error;

  /// The instance of the `MoisesException` class.
  const MoisesException({
    this.stackTrace,
    required this.error,
  });

  /// Adapts the error based on the type
  factory MoisesException.onError(StackTrace? stackTrace, dynamic error) {
    if (error is Map<String, dynamic>) {
      return MoisesException(
        stackTrace: stackTrace,
        error: MoisesError.fromJson(error),
      );
    }

    if (error is DioException) {
      return MoisesException(
        stackTrace: stackTrace,
        error: MoisesError.fromDioException(error),
      );
    }

    return MoisesException(
      stackTrace: stackTrace,
      error: MoisesError.notFound(),
    );
  }
}
