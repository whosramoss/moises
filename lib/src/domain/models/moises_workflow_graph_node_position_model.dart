import 'dart:convert';
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'moises_workflow_graph_node_position_model.g.dart';

/// The [MoisesWorkflowGraphNodePositionModel] class.
@JsonSerializable(explicitToJson: true)
class MoisesWorkflowGraphNodePositionModel extends Equatable {
  /// The Node Position x
  @JsonKey(defaultValue: 0)
  final int x;

  /// The Node Position y
  @JsonKey(defaultValue: 0)
  final int y;

  /// Instance of [MoisesWorkflowGraphNodePositionModel].
  const MoisesWorkflowGraphNodePositionModel({required this.x, required this.y});

  /// Parses the Json String and returns the resulting object as [MoisesWorkflowGraphNodePositionModel].
  factory MoisesWorkflowGraphNodePositionModel.fromString(String json) {
    return MoisesWorkflowGraphNodePositionModel.fromJson(jsonDecode(json));
  }

  /// Converts [MoisesWorkflowGraphNodePositionModel] to a JSON string.
  String toJsonString() => jsonEncode(toJson());

  /// Parses the Map and returns the resulting object as [MoisesWorkflowGraphNodePositionModel].
  factory MoisesWorkflowGraphNodePositionModel.fromJson(Map<String, dynamic> json) =>
      _$MoisesWorkflowGraphNodePositionModelFromJson(json);

  /// Converts [MoisesWorkflowGraphNodePositionModel] to a JSON.
  Map<String, dynamic> toJson() => _$MoisesWorkflowGraphNodePositionModelToJson(this);

  @override
  List<Object?> get props => [x, y];
}
