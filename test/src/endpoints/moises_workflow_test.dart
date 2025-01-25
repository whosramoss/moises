import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:mockito/annotations.dart';
import 'package:moises/moises.dart';
import 'package:moises/src/endpoints/workflow/i_moises_workflow.dart';
import 'package:moises/src/endpoints/workflow/moises_workflow.dart';
import 'package:moises/src/infrastructure/connect/moises_connect.dart';

import 'moises_workflow_test.mocks.dart';

@GenerateMocks([MoisesConnect])
void main() {
  final mockConnect = MockMoisesConnect();

  late IMoisesWorkFlow workflow;

  const mockJson = {
    'id': '2362a51f-e9f9-4472-bbd2-c40a0cc83ae2',
    'name': 'Extract Beat map and BPM',
    'slug': 'untitled-workflow-e78c2e',
    'description':
        'Transcribe song BPM and beats with AI for precise rhythm analysis.',
    'createdAt': '2024-12-13T15:11:42.022Z',
    'updatedAt': '2024-12-13T15:11:45.932Z'
  };

  setUpAll(() {
    workflow = MoisesWorkFlow(mockConnect);
  });

  test('must have all instances injected', () {
    expect(mockConnect, isA<MockMoisesConnect>());
    expect(workflow, isA<MoisesWorkFlow>());
  });
  test('[GET] - must return a List<MoisesWorkflowModel>', () async {
    const filter = MoisesWorkflowFilterModel(page: 0, size: 20);

    when(
      mockConnect.get(any, queryParameters: filter.toJson()),
    ).thenAnswer((_) async {
      return Response(
        data: {
          'workflows': [mockJson, mockJson]
        },
        requestOptions: RequestOptions(),
      );
    });

    final result = await workflow.getAll(filter);

    expect(result, isA<List<MoisesWorkflowModel>>());
    expect(result, isNotNull);
  });
}
