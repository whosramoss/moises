import 'package:flutter_test/flutter_test.dart';
import 'package:moises/moises.dart';

void main() {
  const model = MoisesJobFilterModel(
    status: MoisesJobStatusEnum.succeeded,
    workflow: 'workflow-name',
    batchName: 'batch-name',
    page: 0,
    size: 20,
  );

  const json = {
    'status': 'SUCCEEDED',
    'workflow': 'workflow-name',
    'batchName': 'batch-name',
    'page': 0,
    'size': 20,
  };

  const jsonString =
      '{"status":"SUCCEEDED","workflow":"workflow-name","batchName":"batch-name","size":20,"page":0}';

  test('must convert from json to model', () async {
    final v = MoisesJobFilterModel.fromJson(json);
    expect(v, isA<MoisesJobFilterModel>());
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
    final v = MoisesJobFilterModel.fromString(jsonString);
    expect(v, isA<MoisesJobFilterModel>());
    expect(v, equals(model));
  });

  test('must test "fromStatus" method', () async {
    final v = MoisesJobFilterModel.fromStatus('SUCCEEDED');
    expect(v, isA<MoisesJobStatusEnum>());
  });

  test('must test "toStatus" method', () async {
    final v = MoisesJobFilterModel.toStatus(MoisesJobStatusEnum.succeeded);
    expect(v, isA<String>());
  });
}
