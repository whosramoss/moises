import 'package:moises/moises.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  const model = MoisesJobFilterModel(
    status: MoisesJobStatusEnum.succeeded,
  );

  final model2 = MoisesJobFilterModel(
    workflow: MoisesWorkflowEnum.stemsVocalsAccompaniment.id,
  );

  final model3 = MoisesJobFilterModel(
    status: MoisesJobStatusEnum.succeeded,
    workflow: MoisesWorkflowEnum.stemsVocalsAccompaniment.id,
  );

  const json = {'status': 'SUCCEEDED'};

  const jsonString = '{"status":"SUCCEEDED"}';

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

  test('must test "toStatus" method', () async {
    MoisesJobStatusEnum.values.map((e) {
      final v = MoisesJobFilterModel.toStatus(e);
      expect(v, isA<MoisesJobFilterModel>());
    });
  });
  test('must test "fromStatus" method', () async {
    MoisesJobStatusEnum.values.map((e) {
      final v = MoisesJobFilterModel.fromStatus(e.status);
      expect(v, isA<MoisesJobFilterModel>());
    });
  });
  test('must test if have status condition', () async {
    expect(model.status, isNotNull);
    expect(model2.status, isNull);
    expect(model3.status, isNotNull);
  });

  test('must test if have worklflow condition', () async {
    expect(model.workflow, isNull);
    expect(model2.workflow, isNotNull);
    expect(model3.workflow, isNotNull);
  });
}
