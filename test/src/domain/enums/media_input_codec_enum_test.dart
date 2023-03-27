import 'package:flutter_test/flutter_test.dart';
import 'package:moises/src/domain/enums/media_input_codec_enum.dart';

void main() {
  test('must test if all parameters are MediaInputCodecEnum', () {
    MediaInputCodecEnum.values.map((e) => expect(e, isA<MediaInputCodecEnum>()));
  });

  test('must test if all has 10 typs of MediaInputCodecEnum', () {
    final total = MediaInputCodecEnum.values.length;
    expect(total, isA<int>());
    expect(total, equals(10));
  });
}
