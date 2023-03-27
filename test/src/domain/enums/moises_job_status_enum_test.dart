import 'package:flutter_test/flutter_test.dart';
import 'package:moises/src/domain/enums/moises_job_status_enum.dart';

void main() {
  test('must test if all Status parameter are String', () {
    MoisesJobStatusEnum.values.map((e) {
      expect(e, isA<MoisesJobStatusEnum>());
      expect(e.status, isA<String>());
    });
  });

  test('must test if passing String parameter returns an Enum', () {
    MoisesJobStatusEnum.values.map((e) => e.status).map((status) {
      expect(
        MoisesJobStatusEnum.getEnumByString(status),
        isA<MoisesJobStatusEnum>(),
      );
    });
  });
}
