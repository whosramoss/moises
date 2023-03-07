import 'dart:convert';
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'moises_workflow_graph_edge_model.g.dart';

/// The [MoisesWorkflowGraphEdgeModel] class.
@JsonSerializable(explicitToJson: true)
class MoisesWorkflowGraphEdgeModel extends Equatable {
  /// The Edge ID
  @JsonKey(defaultValue: '')
  final String id;

  /// The Edge Source
  @JsonKey(defaultValue: '')
  final String source;

  /// The Edge Target
  @JsonKey(defaultValue: '')
  final String target;

  /// The Edge Source Handle
  @JsonKey(defaultValue: '')
  final String sourceHandle;

  /// The Edge Target Handle
  @JsonKey(defaultValue: '')
  final String targetHandle;

  /// Instance of [MoisesWorkflowGraphEdgeModel].
  const MoisesWorkflowGraphEdgeModel({
    required this.id,
    required this.source,
    required this.target,
    required this.sourceHandle,
    required this.targetHandle,
  });

  /// Parses the Json String and returns the resulting object as [MoisesWorkflowGraphEdgeModel].
  factory MoisesWorkflowGraphEdgeModel.fromString(String json) {
    return MoisesWorkflowGraphEdgeModel.fromJson(jsonDecode(json));
  }

  /// Converts [MoisesWorkflowGraphEdgeModel] to a JSON string.
  String toJsonString() => jsonEncode(toJson());

  /// Parses the Map and returns the resulting object as [MoisesWorkflowGraphEdgeModel].
  factory MoisesWorkflowGraphEdgeModel.fromJson(Map<String, dynamic> json) =>
      _$MoisesWorkflowGraphEdgeModelFromJson(json);

  /// Converts [MoisesWorkflowGraphEdgeModel] to a JSON.
  Map<String, dynamic> toJson() => _$MoisesWorkflowGraphEdgeModelToJson(this);

  @override
  List<Object?> get props => [
        id,
        source,
        target,
        sourceHandle,
        targetHandle,
      ];
}
