import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:mockito/annotations.dart';
import 'package:moises/moises.dart';
import 'package:moises/src/endpoints/upload/i_moises_upload.dart';
import 'package:moises/src/endpoints/upload/moises_upload.dart';
import 'package:moises/src/infrastructure/connect/moises_connect.dart';

import 'moises_upload_test.mocks.dart';

@GenerateMocks([MoisesConnect])
void main() {
  final mockConnect = MockMoisesConnect();

  late IMoisesUpload upload;

  const mockJson = {
    'uploadUrl':
        'https://storage.googleapis.com/moises/939b7898b3ef?(...)X96cb5',
    'downloadUrl':
        'https://storage.googleapis.com/moises/939b7898b3ef?(...)SSScb5'
  };

  setUpAll(() {
    upload = MoisesUpload(mockConnect);
  });

  test('must have all instances injected', () {
    expect(mockConnect, isA<MockMoisesConnect>());
    expect(upload, isA<MoisesUpload>());
  });

  test('[GET] - must return a MoisesUploadModel', () async {
    when(
      mockConnect.get(any),
    ).thenAnswer((_) async {
      return Response(data: mockJson, requestOptions: RequestOptions());
    });

    final result = await upload.get();

    expect(result, isA<MoisesUploadModel>());
    expect(result, isNotNull);
  });
}
