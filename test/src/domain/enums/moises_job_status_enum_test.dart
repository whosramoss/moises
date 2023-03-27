import 'package:flutter_test/flutter_test.dart';
import 'package:moises/src/domain/enums/moises_job_status_enum.dart';

void main() {
  test('must test if all "status" parameter are String and not empty', () {
    MoisesJobStatusEnum.values.map((e) {
      expect(e, isA<MoisesJobStatusEnum>());
      expect(e.status, isA<String>());
      expect(e.status, isNotEmpty);
    });
  });

  test('must test if all has 5 types of MoisesJobStatusEnum', () {
    final total = MoisesJobStatusEnum.values.length;
    expect(total, isA<int>());
    expect(total, equals(5));
  });

  test('must test if passing String parameter returns an Enum QUEUED', () {
    final v = MoisesJobStatusEnum.getEnumByString('QUEUED');
    expect(v, isA<MoisesJobStatusEnum>());
    expect(v, equals(MoisesJobStatusEnum.queued));
  });

  test('must test if passing String parameter returns an Enum NONE', () {
    final v = MoisesJobStatusEnum.getEnumByString('ANY-RANDOM-STATUS');
    expect(v, isA<MoisesJobStatusEnum>());
    expect(v, equals(MoisesJobStatusEnum.none));
  });
}
