import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:moises/moises.dart';

void main() {
  const model = MoisesError(
      statusCode: 401, code: 'P2023', error: 'Unauthorized', message: '');

  const json = {
    'statusCode': 401,
    'code': 'P2023',
    'error': 'Unauthorized',
    'message': ''
  };

  const jsonString =
      '{"statusCode":401,"code":"P2023","error":"Unauthorized","message":""}';

  test('must convert from json to model', () async {
    final v = MoisesError.fromJson(json);
    expect(v, isA<MoisesError>());
    expect(v, equals(model));
  });

  test('must convert from model to json', () async {
    final v = model.toJson();
    expect(v, isA<Map>());
    expect(v, equals(json));
  });

  test('must convert from model to string', () async {
    final v = model.toJsonString();
    expect(v, isA<String>());
    expect(v, equals(jsonString));
  });

  test('must convert from string to model', () async {
    final v = MoisesError.fromString(jsonString);
    expect(v, isA<MoisesError>());
    expect(v, equals(model));
  });

  test('must convert from DioException  to MoisesError', () async {
    final error = DioException(requestOptions: RequestOptions());
    final v = MoisesError.fromDioException(error);
    expect(v, isA<MoisesError>());
  });
}
