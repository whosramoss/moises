import 'package:flutter_test/flutter_test.dart';
import 'package:moises/src/domain/enums/moises_worklflow_enum.dart';

void main() {
  test('must test if all parameters are Strings', () {
    MoisesWorkflowEnum.values.map((e) => expect(e.id, isA<String>()));
  });

  test('must test if all ids parameters have the moises keyword', () {
    MoisesWorkflowEnum.values.map((e) {
      final v = e.id.contains('moises');
      expect(v, equals(true));
    });
  });
}
