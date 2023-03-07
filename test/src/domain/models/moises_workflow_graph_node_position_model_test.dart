import 'package:flutter_test/flutter_test.dart';
import 'package:moises/moises.dart';

void main() {
  const model = MoisesWorkflowGraphNodePositionModel(x: 250, y: 5);

  const json = {'x': 250, 'y': 5};

  group('[Model][MoisesWorkflowGraphNodePositionModel]', () {
    test('must convert from json to model', () async {
      var v = MoisesWorkflowGraphNodePositionModel.fromJson(json);
      expect(v, isA<MoisesWorkflowGraphNodePositionModel>());
      expect(v, equals(model));
    });
  });
}
