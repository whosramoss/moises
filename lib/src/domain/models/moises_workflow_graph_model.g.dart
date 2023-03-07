// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'moises_workflow_graph_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MoisesWorkflowGraphModel _$MoisesWorkflowGraphModelFromJson(
        Map<String, dynamic> json) =>
    MoisesWorkflowGraphModel(
      nodes: (json['nodes'] as List<dynamic>?)
              ?.map((e) => MoisesWorkflowGraphNodeModel.fromJson(
                  e as Map<String, dynamic>))
              .toList() ??
          [],
      edges: (json['edges'] as List<dynamic>?)
              ?.map((e) => MoisesWorkflowGraphEdgeModel.fromJson(
                  e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$MoisesWorkflowGraphModelToJson(
        MoisesWorkflowGraphModel instance) =>
    <String, dynamic>{
      'nodes': instance.nodes.map((e) => e.toJson()).toList(),
      'edges': instance.edges.map((e) => e.toJson()).toList(),
    };
