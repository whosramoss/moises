import 'package:flutter_test/flutter_test.dart';
import 'package:moises/moises.dart';

void main() {
  const model = MoisesWorkflowFilterModel(page: 1, size: 20);

  const json = {'page': 1, 'size': 20};

  const jsonString = '{"size":20,"page":1}';

  test('must convert from json to model', () async {
    final v = MoisesWorkflowFilterModel.fromJson(json);
    expect(v, isA<MoisesWorkflowFilterModel>());
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
    final v = MoisesWorkflowFilterModel.fromString(jsonString);
    expect(v, isA<MoisesWorkflowFilterModel>());
    expect(v, equals(model));
  });
}
