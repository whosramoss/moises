import 'package:flutter_test/flutter_test.dart';
import 'package:moises/src/domain/models/moises_new_job_result_model.dart';

void main() {
  const model = MoisesNewJobResultModel(
    jobId: '00000000-0000-0000-0000-000000000000',
    id: '00000000-0000-0000-0000-000000000000',
  );

  const json = {
    'jobId': '00000000-0000-0000-0000-000000000000',
    'id': '00000000-0000-0000-0000-000000000000',
  };

  const jsonString = '{"id":"00000000-0000-0000-0000-000000000000","jobId":"00000000-0000-0000-0000-000000000000"}';

  test('must convert from json to model', () async {
    final v = MoisesNewJobResultModel.fromJson(json);
    expect(v, isA<MoisesNewJobResultModel>());
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
    final v = MoisesNewJobResultModel.fromString(jsonString);
    expect(v, isA<MoisesNewJobResultModel>());
    expect(v, equals(model));
  });
}
