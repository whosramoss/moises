import 'dart:convert';
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import 'package:moises/moises.dart';

part 'moises_workflow_graph_model.g.dart';

/// The [MoisesWorkflowGraphModel] class.
@JsonSerializable(explicitToJson: true)
class MoisesWorkflowGraphModel extends Equatable {
  /// The Graph nodes
  @JsonKey(defaultValue: [])
  final List<MoisesWorkflowGraphNodeModel> nodes;

  /// The Graph edges
  @JsonKey(defaultValue: [])
  final List<MoisesWorkflowGraphEdgeModel> edges;

  /// Instance of [MoisesWorkflowGraphModel].
  const MoisesWorkflowGraphModel({
    required this.nodes,
    required this.edges,
  });

  /// Parses the Json String and returns the resulting object as [MoisesWorkflowGraphModel].
  factory MoisesWorkflowGraphModel.fromString(String json) {
    return MoisesWorkflowGraphModel.fromJson(jsonDecode(json));
  }

  /// Converts [MoisesWorkflowGraphModel] to a JSON string.
  String toJsonString() => jsonEncode(toJson());

  /// Parses the Map and returns the resulting object as [MoisesWorkflowGraphModel].
  factory MoisesWorkflowGraphModel.fromJson(Map<String, dynamic> json) => _$MoisesWorkflowGraphModelFromJson(json);

  /// Converts [MoisesWorkflowGraphModel] to a JSON.
  Map<String, dynamic> toJson() => _$MoisesWorkflowGraphModelToJson(this);

  @override
  List<Object?> get props => [nodes, edges];
}
