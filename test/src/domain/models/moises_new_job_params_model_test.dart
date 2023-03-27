import 'package:flutter_test/flutter_test.dart';
import 'package:moises/moises.dart';

void main() {
  const model = MoisesNewJobParamsModel(
    inputUrl: 'https://your-server.com/some-audio.m4a',
  );

  const json = {'inputUrl': 'https://your-server.com/some-audio.m4a'};

  const jsonString = '{"inputUrl":"https://your-server.com/some-audio.m4a"}';

  test('must convert from json to model', () async {
    final v = MoisesNewJobParamsModel.fromJson(json);
    expect(v, isA<MoisesNewJobParamsModel>());
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
    final v = MoisesNewJobParamsModel.fromString(jsonString);
    expect(v, isA<MoisesNewJobParamsModel>());
    expect(v, equals(model));
  });
}
