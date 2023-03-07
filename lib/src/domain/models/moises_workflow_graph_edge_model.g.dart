// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'moises_workflow_graph_edge_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MoisesWorkflowGraphEdgeModel _$MoisesWorkflowGraphEdgeModelFromJson(
        Map<String, dynamic> json) =>
    MoisesWorkflowGraphEdgeModel(
      id: json['id'] as String? ?? '',
      source: json['source'] as String? ?? '',
      target: json['target'] as String? ?? '',
      sourceHandle: json['sourceHandle'] as String? ?? '',
      targetHandle: json['targetHandle'] as String? ?? '',
    );

Map<String, dynamic> _$MoisesWorkflowGraphEdgeModelToJson(
        MoisesWorkflowGraphEdgeModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'source': instance.source,
      'target': instance.target,
      'sourceHandle': instance.sourceHandle,
      'targetHandle': instance.targetHandle,
    };
