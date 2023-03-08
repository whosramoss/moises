import 'package:flutter_test/flutter_test.dart';
import 'package:moises/src/domain/enums/media_input_codec_enum.dart';

void main() {
  group('[Enum][MediaInputCodecEnum]', () {
    test('must test if all parameters are MediaInputCodecEnum', () {
      MediaInputCodecEnum.values.map((e) => expect(e, isA<MediaInputCodecEnum>()));
    });
  });
}
