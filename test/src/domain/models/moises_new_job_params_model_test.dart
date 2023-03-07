import 'package:flutter_test/flutter_test.dart';
import 'package:moises/moises.dart';

void main() {
  const model = MoisesNewJobParamsModel(
    inputUrl: 'https://your-server.com/some-audio.m4a',
  );

  const json = {'inputUrl': 'https://your-server.com/some-audio.m4a'};

  group('[Model][MoisesNewJobParamsModel]', () {
    test('must convert from json to model', () async {
      var v = MoisesNewJobParamsModel.fromJson(json);
      expect(v, isA<MoisesNewJobParamsModel>());
      expect(v, equals(model));
    });
  });
}
