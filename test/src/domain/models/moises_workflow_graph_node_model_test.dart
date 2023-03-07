import 'package:flutter_test/flutter_test.dart';
import 'package:moises/moises.dart';

void main() {
  const model = MoisesWorkflowGraphNodeModel(
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
  );

  const json = {
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
  };

  group('[Model][MoisesWorkflowGraphNodeModel]', () {
    test('must convert from json to model', () async {
      var v = MoisesWorkflowGraphNodeModel.fromJson(json);
      expect(v, isA<MoisesWorkflowGraphNodeModel>());
      expect(v, equals(model));
    });
  });
}
