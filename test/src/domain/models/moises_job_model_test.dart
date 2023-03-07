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
      apiKey: '',
      inputUrl: 'https://www.dropbox.com/',
      graph: MoisesWorkflowGraphModel(
        edges: [
          MoisesWorkflowGraphEdgeModel(
            id: 'reactflow__edge',
            source: 'input_0',
            sourceHandle: 'STEMS--VOCALS-BASS-DRUMS-OTHER',
            target: 'outputFileUrl',
            targetHandle: 'inputFileUrl',
          ),
        ],
        nodes: [
          MoisesWorkflowGraphNodeModel(
            id: 'input_0',
            data: MoisesWorkflowGraphNodeDataModel(
              label: 'Original Audio Input',
              settings: {},
            ),
            type: 'ioInputFile',
            width: 200,
            height: 46,
            position: MoisesWorkflowGraphNodePositionModel(x: 250, y: 5),
            deletable: false,
            dragHandle: '.custom-drag-handle',
            sourcePosition: 'right',
            targetPosition: 'left',
          ),
        ],
      ),
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
      'apiKey': '',
      'inputUrl': 'https://www.dropbox.com/',
      'graph': {
        'edges': [
          {
            'id': 'reactflow__edge',
            'source': 'input_0',
            'sourceHandle': 'STEMS--VOCALS-BASS-DRUMS-OTHER',
            'target': 'outputFileUrl',
            'targetHandle': 'inputFileUrl',
          },
        ],
        'nodes': [
          {
            'id': 'input_0',
            'data': {'label': 'Original Audio Input', 'settings': {}},
            'type': 'ioInputFile',
            'width': 200,
            'height': 46,
            'position': {'x': 250, 'y': 5},
            'deletable': false,
            'dragHandle': '.custom-drag-handle',
            'sourcePosition': 'right',
            'targetPosition': 'left'
          },
        ]
      },
    },
    'name': 'Try Orchestrator workflow',
    'createdAt': '2023-01-01T01:01:11.600Z',
    'startedAt': '2023-01-01T01:01:11.600Z',
    'completedAt': '2023-01-01T01:01:11.600Z',
  };

  group('[Model][MoisesJobModel]', () {
    test('must convert from json to model', () async {
      var v = MoisesJobModel.fromJson(json);
      expect(v, isA<MoisesJobModel>());
      expect(v, equals(model));
    });
  });
}
