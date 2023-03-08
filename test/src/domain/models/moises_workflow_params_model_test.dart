import 'package:flutter_test/flutter_test.dart';
import 'package:moises/moises.dart';

void main() {
  var model = const MoisesWorkflowParamsModel(inputUrl: 'https://www.dropbox.com/');

  const json = {'inputUrl': 'https://www.dropbox.com/'};

  group('[Model][MoisesWorkflowParamsModel]', () {
    test('must convert from json to model', () async {
      var v = MoisesWorkflowParamsModel.fromJson(json);
      expect(v, isA<MoisesWorkflowParamsModel>());
      expect(v, equals(model));
    });
  });
}
