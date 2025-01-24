import 'package:flutter_test/flutter_test.dart';
import 'package:moises/src/domain/models/moises_workflow_model.dart';

void main() {
  const model = MoisesWorkflowModel(
    id: '2362a51f-e9f9-4472-bbd2-c40a0cc83ae2',
    name: 'Extract Beat map and BPM',
    slug: 'untitled-workflow-e78c2e',
    description:
        'Transcribe song BPM and beats with AI for precise rhythm analysis.',
    createdAt: '2024-12-13T15:11:42.022Z',
    updatedAt: '2024-12-13T15:11:45.932Z',
  );

  const json = {
    'id': '2362a51f-e9f9-4472-bbd2-c40a0cc83ae2',
    'name': 'Extract Beat map and BPM',
    'slug': 'untitled-workflow-e78c2e',
    'description':
        'Transcribe song BPM and beats with AI for precise rhythm analysis.',
    'createdAt': '2024-12-13T15:11:42.022Z',
    'updatedAt': '2024-12-13T15:11:45.932Z'
  };

  const jsonString =
      '{"id":"2362a51f-e9f9-4472-bbd2-c40a0cc83ae2","name":"Extract Beat map and BPM","slug":"untitled-workflow-e78c2e","description":"Transcribe song BPM and beats with AI for precise rhythm analysis.","createdAt":"2024-12-13T15:11:42.022Z","updatedAt":"2024-12-13T15:11:45.932Z"}';

  test('must convert from json to model', () async {
    final v = MoisesWorkflowModel.fromJson(json);
    expect(v, isA<MoisesWorkflowModel>());
    expect(v, equals(model));
  });

  test('must convert from model to json', () async {
    final v = model.toJson();
    expect(v, isA<Map>());
    expect(v, equals(json));
  });

  test('must convert from model to string', () async {
    final v = model.toJsonString();
    expect(v, isA<String>());
    expect(v, equals(jsonString));
  });

  test('must convert from string to model', () async {
    final v = MoisesWorkflowModel.fromString(jsonString);
    expect(v, isA<MoisesWorkflowModel>());
    expect(v, equals(model));
  });
}
