import 'package:moises/moises.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  const model = MoisesUploadModel(
    uploadUrl: 'https://storage.googleapis.com/moises/939b7898b3ef?(...)X96cb5',
    downloadUrl:
        'https://storage.googleapis.com/moises/939b7898b3ef?(...)SSScb5',
  );

  const json = {
    'uploadUrl':
        'https://storage.googleapis.com/moises/939b7898b3ef?(...)X96cb5',
    'downloadUrl':
        'https://storage.googleapis.com/moises/939b7898b3ef?(...)SSScb5',
  };

  const jsonString =
      '{"uploadUrl":"https://storage.googleapis.com/moises/939b7898b3ef?(...)X96cb5","downloadUrl":"https://storage.googleapis.com/moises/939b7898b3ef?(...)SSScb5"}';

  test('must convert from json to model', () async {
    final v = MoisesUploadModel.fromJson(json);
    expect(v, isA<MoisesUploadModel>());
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
    final v = MoisesUploadModel.fromString(jsonString);
    expect(v, isA<MoisesUploadModel>());
    expect(v, equals(model));
  });
}
