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

  final dioException = DioException(requestOptions: RequestOptions());

  test('must test if has stackTrace', () async {
    final v = MoisesException.onError(null, jsonError);
    expect(v, isA<MoisesException>());
    expect(v.stackTrace, isNull);

    final v2 = MoisesException.onError(StackTrace.empty, jsonError);
    expect(v2, isA<MoisesException>());
    expect(v2.stackTrace, isNotNull);
  });

  group('must test "onError" method', () {
    test('with Map error', () async {
      final v = MoisesException.onError(StackTrace.empty, jsonError);
      expect(v, isA<MoisesException>());
      expect(v.error, isA<MoisesError>());
      expect(v.stackTrace, isA<StackTrace>());
      expect(v.error, isNotNull);
      expect(v.stackTrace, isNotNull);
    });

    test('with Dio error', () async {
      final v = MoisesException.onError(StackTrace.empty, dioException);
      expect(v, isA<MoisesException>());
      expect(v.error, isA<MoisesError>());
      expect(v.stackTrace, isA<StackTrace>());
      expect(v.error, isNotNull);
      expect(v.stackTrace, isNotNull);
    });
    test('with null error', () async {
      final v = MoisesException.onError(StackTrace.empty, null);
      expect(v, isA<MoisesException>());
      expect(v.error, isA<MoisesError>());
      expect(v.stackTrace, isA<StackTrace>());
      expect(v.error, isNotNull);
      expect(v.stackTrace, isNotNull);
    });
  });
}
