import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:mockito/annotations.dart';
import 'package:moises/src/domain/enums/moises_job_status_enum.dart';
import 'package:moises/src/domain/models/moises_job_filter_model.dart';
import 'package:moises/src/domain/models/moises_job_model.dart';
import 'package:moises/src/domain/models/moises_new_job_model.dart';
import 'package:moises/src/domain/models/moises_new_job_result_model.dart';
import 'package:moises/src/endpoints/job/i_moises_job.dart';
import 'package:moises/src/endpoints/job/moises_job.dart';
import 'package:moises/src/infrastructure/connect/moises_connect.dart';

import 'moises_application_test.mocks.dart';

@GenerateMocks([MoisesConnect])
void main() {
  final mockConnect = MockMoisesConnect();

  late IMoisesJob job;

  const String mockId = '00000000-0000-0000-0000-000000000000';
  const Map<String, dynamic> mockJson = {
    'id': '00000000-0000-0000-0000-000000000000',
    'app': 'Default Application',
    'workflow': 'Orchestrator runtime',
    'status': 'SUCCEEDED',
    'batchName': null,
    'result': {
      'Job Name': 'https://storage.googleapis.com/',
      'Job Name 2': 'https://storage.googleapis.com/',
    },
    'workflowParams': {
      'inputUrl': 'https://www.dropbox.com/',
    },
    'name': 'Try Orchestrator workflow',
    'createdAt': '2023-01-01T01:01:11.600Z',
    'startedAt': '2023-01-01T01:01:11.600Z',
    'completedAt': '2023-01-01T01:01:11.600Z',
  };

  setUpAll(() {
    job = MoisesJob(mockConnect);
  });

  test('must have all instances injected', () {
    expect(mockConnect, isA<MockMoisesConnect>());
    expect(job, isA<MoisesJob>());
  });

  test('[GET BY ID] must return a MoisesJobModel', () async {
    when(
      mockConnect.get(any),
    ).thenAnswer((_) async {
      return Response(data: mockJson, requestOptions: RequestOptions());
    });

    var result = await job.get(mockId);

    expect(result, isA<MoisesJobModel>());
    expect(result, isNotNull);
  });

  test('[GET] - must return a List<MoisesJobModel>', () async {
    const MoisesJobFilterModel statusFilter = MoisesJobFilterModel(
      status: MoisesJobStatusEnum.succeeded,
    );

    when(
      mockConnect.get(any, queryParameters: statusFilter.toJson()),
    ).thenAnswer((_) async {
      return Response(
        data: [mockJson, mockJson],
        requestOptions: RequestOptions(),
      );
    });

    var result = await job.getAll(statusFilter);

    expect(result, isA<List<MoisesJobModel>>());
    expect(result, isNotNull);
  });

  test(
      '[POST] - must create a MoisesJobModel and return MoisesNewJobResultModel',
      () async {
    clearInteractions(mockConnect);

    const model = MoisesNewJobModel(
      name: 'My job 123',
      workflow: 'my-workflow-id',
      params: {
        'inputUrl': 'https://your-server.com/some-audio.m4a',
      },
    );

    const json = {
      'jobId': '00000000-0000-0000-0000-000000000000',
      'id': '00000000-0000-0000-0000-000000000000',
    };

    when(
      mockConnect.post(
        any,
        headers: {'Content-Type': 'application/json'},
        data: model.toJson(),
      ),
    ).thenAnswer((_) async {
      return Response(data: json, requestOptions: RequestOptions());
    });

    var result = await job.create(model);

    expect(result, isA<MoisesNewJobResultModel>());
    expect(result, isNotNull);
  });

  test('[DELETE] - must delete a MoisesJobModel', () async {
    clearInteractions(mockConnect);

    when(
      mockConnect.delete(any),
    ).thenAnswer((_) async {
      return Response(requestOptions: RequestOptions());
    });

    await job.delete(mockId);

    verify(mockConnect.delete(any)).called(1);
  });
}
