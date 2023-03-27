import 'package:moises/moises.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  const model = MoisesApplicationModel(
    id: '00000000-0000-0000-0000-000000000000',
    name: 'Default Application',
  );

  const json = {
    'id': '00000000-0000-0000-0000-000000000000',
    'name': 'Default Application',
  };

  const jsonString = '{"id":"00000000-0000-0000-0000-000000000000","name":"Default Application"}';

  test('must convert from json to model', () async {
    final v = MoisesApplicationModel.fromJson(json);
    expect(v, isA<MoisesApplicationModel>());
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
    final v = MoisesApplicationModel.fromString(jsonString);
    expect(v, isA<MoisesApplicationModel>());
    expect(v, equals(model));
  });
}
