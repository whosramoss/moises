import 'package:flutter_test/flutter_test.dart';
import 'package:moises/moises.dart';

void main() {
  const model = MoisesNewJobModel(
    name: 'My job 123',
    workflow: 'my-workflow-id',
    params: MoisesNewJobParamsModel(inputUrl: 'https://your-server.com/some-audio.m4a'),
  );

  const json = {
    'name': 'My job 123',
    'workflow': 'my-workflow-id',
    'params': {'inputUrl': 'https://your-server.com/some-audio.m4a'}
  };

  test('must convert from json to model', () async {
    var v = MoisesNewJobModel.fromJson(json);
    expect(v, isA<MoisesNewJobModel>());
    expect(v, equals(model));
  });
}
