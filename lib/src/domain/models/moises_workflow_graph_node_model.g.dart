// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'moises_workflow_graph_node_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MoisesWorkflowGraphNodeModel _$MoisesWorkflowGraphNodeModelFromJson(
        Map<String, dynamic> json) =>
    MoisesWorkflowGraphNodeModel(
      id: json['id'] as String? ?? '',
      type: json['type'] as String? ?? '',
      width: json['width'] as int? ?? 0,
      height: json['height'] as int? ?? 0,
      dragging: json['dragging'] as bool?,
      selected: json['selected'] as bool?,
      deletable: json['deletable'] as bool?,
      dragHandle: json['dragHandle'] as String?,
      sourcePosition: json['sourcePosition'] as String? ?? '',
      targetPosition: json['targetPosition'] as String? ?? '',
      data: MoisesWorkflowGraphNodeDataModel.fromJson(
          json['data'] as Map<String, dynamic>),
      position: MoisesWorkflowGraphNodePositionModel.fromJson(
          json['position'] as Map<String, dynamic>),
      positionAbsolute: json['positionAbsolute'] == null
          ? null
          : MoisesWorkflowGraphNodePositionModel.fromJson(
              json['positionAbsolute'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$MoisesWorkflowGraphNodeModelToJson(
        MoisesWorkflowGraphNodeModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'width': instance.width,
      'height': instance.height,
      'sourcePosition': instance.sourcePosition,
      'targetPosition': instance.targetPosition,
      'data': instance.data.toJson(),
      'position': instance.position.toJson(),
      'positionAbsolute': instance.positionAbsolute?.toJson(),
      'dragging': instance.dragging,
      'selected': instance.selected,
      'deletable': instance.deletable,
      'dragHandle': instance.dragHandle,
    };
