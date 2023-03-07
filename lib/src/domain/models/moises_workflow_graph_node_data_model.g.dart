// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'moises_workflow_graph_node_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MoisesWorkflowGraphNodeDataModel _$MoisesWorkflowGraphNodeDataModelFromJson(
        Map<String, dynamic> json) =>
    MoisesWorkflowGraphNodeDataModel(
      moduleId: json['moduleId'] as String?,
      label: json['label'] as String?,
      settings: MoisesWorkflowGraphNodeDataModel._defineSettings(
          json['settings'] as Object),
    );

Map<String, dynamic> _$MoisesWorkflowGraphNodeDataModelToJson(
        MoisesWorkflowGraphNodeDataModel instance) =>
    <String, dynamic>{
      'moduleId': instance.moduleId,
      'label': instance.label,
      'settings': instance.settings,
    };
