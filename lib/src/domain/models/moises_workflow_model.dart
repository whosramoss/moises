import 'dart:convert';
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'moises_workflow_model.g.dart';

/// The [MoisesWorkflowModel] class.
@JsonSerializable(explicitToJson: true)
class MoisesWorkflowModel extends Equatable {
  /// The Workflow ID
  @JsonKey(defaultValue: '')
  final String id;

  /// The Workflow name
  @JsonKey(defaultValue: '')
  final String name;

  /// The Workflow slug
  @JsonKey(defaultValue: '')
  final String slug;

  /// The Workflow description
  @JsonKey(defaultValue: '')
  final String description;

  /// The Workflow createdAt
  @JsonKey(defaultValue: '')
  final String createdAt;

  /// The Workflow updatedAt
  @JsonKey(defaultValue: '')
  final String updatedAt;

  /// Instance of [MoisesWorkflowModel].
  const MoisesWorkflowModel({
    required this.id,
    required this.name,
    required this.slug,
    required this.description,
    required this.createdAt,
    required this.updatedAt,
  });

  /// Parses the Json String and returns the resulting object as [MoisesWorkflowModel].
  factory MoisesWorkflowModel.fromString(String json) {
    return MoisesWorkflowModel.fromJson(jsonDecode(json));
  }

  /// Converts [MoisesWorkflowModel] to a JSON string.
  String toJsonString() => jsonEncode(toJson());

  /// Parses the Map and returns the resulting object as [MoisesWorkflowModel].
  factory MoisesWorkflowModel.fromJson(Map<String, dynamic> json) =>
      _$MoisesWorkflowModelFromJson(json);

  /// Converts [MoisesWorkflowModel] to a JSON.
  Map<String, dynamic> toJson() => _$MoisesWorkflowModelToJson(this);

  @override
  List<Object?> get props => [
        id,
        name,
        slug,
        description,
        createdAt,
        updatedAt,
      ];
}
