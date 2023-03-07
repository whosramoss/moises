import 'dart:convert';
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import 'package:moises/src/domain/models/moises_workflow_graph_node_data_model.dart';
import 'package:moises/src/domain/models/moises_workflow_graph_node_position_model.dart';

part 'moises_workflow_graph_node_model.g.dart';

/// The [MoisesWorkflowGraphNodeModel] class.
@JsonSerializable(explicitToJson: true)
class MoisesWorkflowGraphNodeModel extends Equatable {
  /// The Graph Node ID
  @JsonKey(defaultValue: '')
  final String id;

  /// The Graph Node Type
  @JsonKey(defaultValue: '')
  final String type;

  /// The Graph Node Width
  @JsonKey(defaultValue: 0)
  final int width;

  /// The Graph Node Height
  @JsonKey(defaultValue: 0)
  final int height;

  /// The Graph Node Source Position
  @JsonKey(defaultValue: '')
  final String sourcePosition;

  /// The Graph Node Target Position
  @JsonKey(defaultValue: '')
  final String targetPosition;

  /// The Graph Node Data
  final MoisesWorkflowGraphNodeDataModel data;

  /// The Graph Node Position
  final MoisesWorkflowGraphNodePositionModel position;

  /// The Graph Node Position Absolute
  final MoisesWorkflowGraphNodePositionModel? positionAbsolute;

  /// The Graph Node Dragging value
  final bool? dragging;

  /// The Graph Node Selected value
  final bool? selected;

  /// The Graph Node Deletable value
  final bool? deletable;

  /// The Graph Node DragHandle value
  final String? dragHandle;

  /// Instance of [MoisesWorkflowGraphNodeModel].
  const MoisesWorkflowGraphNodeModel({
    required this.id,
    required this.type,
    required this.width,
    required this.height,
    this.dragging,
    this.selected,
    this.deletable,
    this.dragHandle,
    required this.sourcePosition,
    required this.targetPosition,
    required this.data,
    required this.position,
    this.positionAbsolute,
  });

  /// Parses the Json String and returns the resulting object as [MoisesWorkflowGraphNodeModel]
  factory MoisesWorkflowGraphNodeModel.fromString(String json) {
    return MoisesWorkflowGraphNodeModel.fromJson(jsonDecode(json));
  }

  /// Converts [MoisesWorkflowGraphNodeModel] to a JSON string.
  String toJsonString() => jsonEncode(toJson());

  /// Parses the Map and returns the resulting object as [MoisesWorkflowGraphNodeModel].
  factory MoisesWorkflowGraphNodeModel.fromJson(Map<String, dynamic> json) =>
      _$MoisesWorkflowGraphNodeModelFromJson(json);

  /// Converts [MoisesWorkflowGraphNodeModel] to a JSON.
  Map<String, dynamic> toJson() => _$MoisesWorkflowGraphNodeModelToJson(this);

  @override
  List<Object?> get props => [
        id,
        type,
        width,
        height,
        dragging,
        selected,
        deletable,
        dragHandle,
        sourcePosition,
        targetPosition,
        data,
        position,
        positionAbsolute,
      ];
}
