import 'package:flutter_test/flutter_test.dart';
import 'package:moises/moises.dart';

void main() {
  const label = 'Original Audio Input';
  const moduleId = 'STEMS--VOCALS-BASS-DRUMS-OTHER';
  group('[Model][MoisesWorkflowGraphNodeDataModel]', () {
    test('With moduleId - must convert from json to model', () async {
      final settings = {'type': 'STEMS--VOCALS-BASS-DRUMS-OTHER'};
      var model = MoisesWorkflowGraphNodeDataModel(moduleId: moduleId, settings: settings);
      var json = {'moduleId': moduleId, 'settings': settings};

      var v = MoisesWorkflowGraphNodeDataModel.fromJson(json);
      expect(v, isA<MoisesWorkflowGraphNodeDataModel>());
      expect(v.moduleId, equals(moduleId));
      expect(v.moduleId, isNotEmpty);
      expect(v, equals(model));
    });
    test('Empty Settings - must convert from json to model', () async {
      const model = MoisesWorkflowGraphNodeDataModel(label: label, settings: {});
      const json = {'label': label, 'settings': {}};

      var v = MoisesWorkflowGraphNodeDataModel.fromJson(json);
      expect(v, isA<MoisesWorkflowGraphNodeDataModel>());
      expect(v.settings, equals({}));
      expect(v, equals(model));
    });

    group('[Dynamic Settings]', () {
      test('Many outputs - must convert from json to model', () async {
        final settings = {
          'outputs': [
            {'label': 'Node data label', 'value': 'value1'}
          ]
        };

        var model = MoisesWorkflowGraphNodeDataModel(label: label, settings: settings);
        var json = {'label': label, 'settings': settings};
        var v = MoisesWorkflowGraphNodeDataModel.fromJson(json);
        expect(v, isA<MoisesWorkflowGraphNodeDataModel>());
        expect(v.settings, isNot({}));
        expect(v.settings, equals(settings));
        expect(v, equals(model));
      });

      test('Many channels - must convert from json to model', () async {
        final settings = {
          'channel1Volume': 12,
          'channel2Volume': 90,
          'channel3Volume': 46,
          'channel4Volume': 67,
          'channel5Volume': 80
        };
        var model = MoisesWorkflowGraphNodeDataModel(label: label, settings: settings);
        var json = {'label': label, 'settings': settings};

        var v = MoisesWorkflowGraphNodeDataModel.fromJson(json);
        expect(v, isA<MoisesWorkflowGraphNodeDataModel>());
        expect(v.settings, isNot({}));
        expect(v.settings, equals(settings));
        expect(v, equals(model));
      });
    });
  });
}
