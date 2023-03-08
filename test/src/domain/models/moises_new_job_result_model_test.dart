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

  group('[Model][MoisesNewJobResultModel]', () {
    test('must convert from json to model', () async {
      var v = MoisesNewJobResultModel.fromJson(json);
      expect(v, isA<MoisesNewJobResultModel>());
      expect(v, equals(model));
    });
  });
}
