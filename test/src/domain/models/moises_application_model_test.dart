import 'package:moises/moises.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  const model = MoisesApplicationModel(
    id: '00000000-0000-0000-0000-000000000000',
    name: 'Default Application',
  );

  const json = {
    'id': '00000000-0000-0000-0000-000000000000',
    'name': 'Default Application',
  };

  group('[Model][MoisesApplicationModel]', () {
    test('must convert from json to model', () async {
      var v = MoisesApplicationModel.fromJson(json);
      expect(v, isA<MoisesApplicationModel>());
      expect(v, equals(model));
    });
  });
}
