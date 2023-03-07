import 'package:flutter_test/flutter_test.dart';
import 'package:moises/moises.dart';

void main() {
  var model = const MoisesWorkflowParamsModel(
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
  );

  const json = {
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
  };

  group('[Model][MoisesWorkflowParamsModel]', () {
    test('must convert from json to model', () async {
      var v = MoisesWorkflowParamsModel.fromJson(json);
      expect(v, isA<MoisesWorkflowParamsModel>());
      expect(v, equals(model));
    });
  });
}
