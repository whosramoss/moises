import 'package:flutter_test/flutter_test.dart';
import 'package:moises/src/endpoints/application/i_moises_application.dart';
import 'package:moises/src/endpoints/job/i_moises_job.dart';
import 'package:moises/src/moises_api.dart';

void main() {
  const String key = '00000000-0000-0000-0000-000000000000';
  test('must test if Moises instance is valid', () {
    final v = Moises(key);
    expect(v, isA<Moises>());
    expect(v, isNotNull);
    expect(v.application, isA<IMoisesApplication>());
    expect(v.job, isA<IMoisesJob>());
  });

  test('must test if MoisesClient instance is valid', () {
    final v = MoisesApiClient(key);
    expect(v, isA<MoisesApiClient>());
    expect(v, isNotNull);
    expect(v.application, isA<IMoisesApplication>());
    expect(v.job, isA<IMoisesJob>());
  });
}
