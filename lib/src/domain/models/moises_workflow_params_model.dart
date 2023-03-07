import 'dart:convert';
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:moises/src/domain/models/moises_workflow_graph_model.dart';

part 'moises_workflow_params_model.g.dart';

/// The [MoisesWorkflowParamsModel] class.
@JsonSerializable(explicitToJson: true)
class MoisesWorkflowParamsModel extends Equatable {
  /// The Workflow Api Key Param
  @JsonKey(defaultValue: '')
  final String apiKey;

  /// The Workflow Input Url Param
  @JsonKey(defaultValue: '')
  final String inputUrl;

  /// The Workflow Graph Param
  final MoisesWorkflowGraphModel? graph;

  /// Instance of [MoisesWorkflowParamsModel].
  const MoisesWorkflowParamsModel({
    required this.apiKey,
    required this.inputUrl,
    required this.graph,
  });

  /// Parses the Json String and returns the resulting object as [MoisesWorkflowParamsModel].
  factory MoisesWorkflowParamsModel.fromString(String json) {
    return MoisesWorkflowParamsModel.fromJson(jsonDecode(json));
  }

  /// Converts [MoisesWorkflowParamsModel] to a JSON string.
  String toJsonString() => jsonEncode(toJson());

  /// Parses the Map and returns the resulting object as [MoisesWorkflowParamsModel].
  factory MoisesWorkflowParamsModel.fromJson(Map<String, dynamic> json) => _$MoisesWorkflowParamsModelFromJson(json);

  /// Converts [MoisesWorkflowParamsModel] to a JSON.
  Map<String, dynamic> toJson() => _$MoisesWorkflowParamsModelToJson(this);

  @override
  List<Object?> get props => [apiKey, inputUrl, graph];
}
