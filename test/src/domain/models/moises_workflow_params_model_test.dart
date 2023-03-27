import 'package:flutter_test/flutter_test.dart';
import 'package:moises/moises.dart';

void main() {
  var model = const MoisesWorkflowParamsModel(inputUrl: 'https://www.dropbox.com/');

  const json = {'inputUrl': 'https://www.dropbox.com/'};

  const jsonString = '{"inputUrl":"https://www.dropbox.com/"}';

  test('must convert from json to model', () async {
    final v = MoisesWorkflowParamsModel.fromJson(json);
    expect(v, isA<MoisesWorkflowParamsModel>());
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
    final v = MoisesWorkflowParamsModel.fromString(jsonString);
    expect(v, isA<MoisesWorkflowParamsModel>());
    expect(v, equals(model));
  });
}
