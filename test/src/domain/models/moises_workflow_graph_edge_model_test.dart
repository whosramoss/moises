import 'package:flutter_test/flutter_test.dart';
import 'package:moises/moises.dart';

void main() {
  const model = MoisesWorkflowGraphEdgeModel(
    id: 'reactflow__edge',
    source: 'input_0',
    sourceHandle: 'STEMS--VOCALS-BASS-DRUMS-OTHER',
    target: 'outputFileUrl',
    targetHandle: 'inputFileUrl',
  );

  const json = {
    'id': 'reactflow__edge',
    'source': 'input_0',
    'sourceHandle': 'STEMS--VOCALS-BASS-DRUMS-OTHER',
    'target': 'outputFileUrl',
    'targetHandle': 'inputFileUrl',
  };

  group('[Model][MoisesWorkflowGraphEdgeModel]', () {
    test('must convert from json to model', () async {
      var v = MoisesWorkflowGraphEdgeModel.fromJson(json);
      expect(v, isA<MoisesWorkflowGraphEdgeModel>());
      expect(v, equals(model));
    });
  });
}
