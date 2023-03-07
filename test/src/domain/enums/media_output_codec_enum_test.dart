import 'package:flutter_test/flutter_test.dart';
import 'package:moises/src/domain/enums/media_output_codec_enum.dart';

void main() {
  group('[Enum][MediaOutputCodecFormatEnum]', () {
    test('must test if all parameters are MediaOutputCodecFormatEnum', () {
      MediaOutputCodecFormatEnum.values.map((e) => expect(e, isA<MediaOutputCodecFormatEnum>()));
    });
  });
}
