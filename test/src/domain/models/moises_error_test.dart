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

  test('must convert from json to model', () async {
    var v = MoisesError.fromJson(json);
    expect(v, isA<MoisesError>());
    expect(v, equals(model));
  });
}
