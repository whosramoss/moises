import 'package:flutter_test/flutter_test.dart';
import 'package:moises/moises.dart';

void main() {
  var model = MoisesJobModel(
    id: '00000000-0000-0000-0000-000000000000',
    app: 'Default Application',
    workflow: 'Orchestrator runtime',
    status: MoisesJobStatusEnum.succeeded.status,
    batchName: null,
    name: 'Try Orchestrator workflow',
    startedAt: '2023-01-01T01:01:11.600Z',
    completedAt: '2023-01-01T01:01:11.600Z',
    createdAt: '2023-01-01T01:01:11.600Z',
    result: const {
      'Job Name': 'https://storage.googleapis.com/',
    },
    workflowParams: const MoisesWorkflowParamsModel(
      inputUrl: 'https://www.dropbox.com/',
    ),
  );

  const json = {
    'id': '00000000-0000-0000-0000-000000000000',
    'app': 'Default Application',
    'workflow': 'Orchestrator runtime',
    'status': 'SUCCEEDED',
    'batchName': null,
    'result': {
      'Job Name': 'https://storage.googleapis.com/',
    },
    'workflowParams': {
      'inputUrl': 'https://www.dropbox.com/',
    },
    'name': 'Try Orchestrator workflow',
    'createdAt': '2023-01-01T01:01:11.600Z',
    'startedAt': '2023-01-01T01:01:11.600Z',
    'completedAt': '2023-01-01T01:01:11.600Z',
  };

  test('must convert from json to model', () async {
    var v = MoisesJobModel.fromJson(json);
    expect(v, isA<MoisesJobModel>());
    expect(v, equals(model));
  });
}
