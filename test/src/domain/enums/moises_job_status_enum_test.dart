import 'package:flutter_test/flutter_test.dart';
import 'package:moises/src/domain/enums/moises_job_status_enum.dart';

void main() {
  group('[Enum][MoisesJobStatusEnum]', () {
    test('must test if all Status parameter are String', () {
      MoisesJobStatusEnum.values.map((e) {
        expect(e, isA<MoisesJobStatusEnum>());
        expect(e.status, isA<String>());
      });
    });

    test('must test if passing String parameter returns an Enum', () {
      final List<String> lst = ['QUEUED', 'STARTED', 'SUCCEEDED', 'FAILED', 'NONE'];
      lst.map((e) => expect(MoisesJobStatusEnum.getEnumByString(e), isA<MoisesJobStatusEnum>()));
    });
  });
}
