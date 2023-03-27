import 'package:flutter_test/flutter_test.dart';
import 'package:moises/moises.dart';

void main() {
  test('must get api url', () async {
    final v = MoisesConstants.api;
    expect(v, isA<String>());
    expect(v, isNotNull);
  });
}
