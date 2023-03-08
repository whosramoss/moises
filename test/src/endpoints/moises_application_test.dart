import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:mockito/annotations.dart';
import 'package:moises/src/domain/models/moises_application_model.dart';
import 'package:moises/src/endpoints/application/i_moises_application.dart';
import 'package:moises/src/endpoints/application/moises_application.dart';
import 'package:moises/src/infrastructure/connect/moises_connect.dart';

import 'moises_application_test.mocks.dart';

@GenerateMocks([MoisesConnect])
void main() {
  final mockConnect = MockMoisesConnect();

  late IMoisesApplication application;

  const mockJson = {
    'id': '00000000-0000-0000-0000-000000000000',
    'name': 'Default Application',
  };

  setUpAll(() {
    application = MoisesApplication(mockConnect);
  });

  group('[MoisesApplication]', () {
    test('must have all instances injected', () {
      expect(mockConnect, isA<MockMoisesConnect>());
      expect(application, isA<MoisesApplication>());
    });

    test('[GET] - must return a MosesApplicationModel', () async {
      when(
        mockConnect.get(any),
      ).thenAnswer((_) async {
        return Response(data: mockJson, requestOptions: RequestOptions());
      });

      var result = await application.get();

      expect(result, isA<MoisesApplicationModel>());
      expect(result, isNotNull);
    });
  });
}
