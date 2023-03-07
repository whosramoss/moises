import 'dart:convert';
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'moises_workflow_graph_node_data_model.g.dart';

/// The [MoisesWorkflowGraphNodeDataModel] class.
@JsonSerializable(explicitToJson: true)
class MoisesWorkflowGraphNodeDataModel extends Equatable {
  /// The Node Data moduleId
  final String? moduleId;

  /// The Node Data label
  final String? label;

  /// The Node Data settings
  @JsonKey(fromJson: _defineSettings)
  final Map<String, dynamic> settings;

  /// Instance of [MoisesWorkflowGraphNodeDataModel].
  const MoisesWorkflowGraphNodeDataModel({
    this.moduleId,
    this.label,
    required this.settings,
  });

  static _defineSettings(Object data) {
    if (data.toString() == '{}') {
      final Map<String, dynamic> v = {};
      return v;
    }

    return data;
  }

  /// Parses the Json String and returns the resulting object as [MoisesWorkflowGraphNodeDataModel].
  factory MoisesWorkflowGraphNodeDataModel.fromString(String json) {
    return MoisesWorkflowGraphNodeDataModel.fromJson(jsonDecode(json));
  }

  /// Converts [MoisesWorkflowGraphNodeDataModel] to a JSON string.
  String toJsonString() => jsonEncode(toJson());

  /// Parses the Map and returns the resulting object as [MoisesWorkflowGraphNodeDataModel].
  factory MoisesWorkflowGraphNodeDataModel.fromJson(Map<String, dynamic> json) =>
      _$MoisesWorkflowGraphNodeDataModelFromJson(json);

  /// Converts [MoisesWorkflowGraphNodeDataModel] to a JSON.
  Map<String, dynamic> toJson() => _$MoisesWorkflowGraphNodeDataModelToJson(this);

  @override
  List<Object?> get props => [moduleId, label, settings];
}
