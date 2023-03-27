import 'package:dio/dio.dart';
import 'package:moises/moises.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  const jsonError = {
    'statusCode': 401,
    'code': 'P2023',
    'error': 'Unauthorized',
    'message': '',
  };

  final dioError = DioError(requestOptions: RequestOptions());

  test('must test if has stackTrace', () async {
    const v = MoisesException(error: jsonError);
    expect(v, isA<MoisesException>());
    expect(v.stackTrace, isNull);

    const v2 = MoisesException(stackTrace: StackTrace.empty, error: jsonError);
    expect(v2, isA<MoisesException>());
    expect(v2.stackTrace, isNotNull);
  });

  test('must test "onError" method', () async {
    final lstErrors = [jsonError, dioError];

    lstErrors.map((error) {
      final v = MoisesException.onError(StackTrace.empty, error);
      expect(v, isA<MoisesException>());
      expect(v.error, isA<MoisesError>());
      expect(v.error, isNotNull);
      expect(v.stackTrace, isA<StackTrace>());
      expect(v.stackTrace, isNotNull);
    });
  });
}
