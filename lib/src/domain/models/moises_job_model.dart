import 'dart:convert';
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import 'package:moises/moises.dart';

part 'moises_job_model.g.dart';

/// The [MoisesJobModel] class.
@JsonSerializable(explicitToJson: true)
class MoisesJobModel extends Equatable {
  /// The Job ID
  @JsonKey(defaultValue: '')
  final String id;

  /// The Job app
  @JsonKey(defaultValue: '')
  final String app;

  /// The Job workflow
  @JsonKey(defaultValue: '')
  final String workflow;

  /// The Job status
  @JsonKey(defaultValue: '')
  final String status;

  /// The Job name
  @JsonKey(defaultValue: '')
  final String name;

  /// The Job createdAt
  @JsonKey(defaultValue: '')
  final String createdAt;

  /// The Job startedAt
  @JsonKey(defaultValue: '')
  final String startedAt;

  /// The Job completedAt
  @JsonKey(defaultValue: '')
  final String completedAt;

  /// The Job batchName
  final dynamic batchName;

  /// The Job result
  final Map<dynamic, dynamic> result;

  /// The Job workflowParams
  final MoisesWorkflowParamsModel workflowParams;

  /// Instance of [MoisesJobModel].
  const MoisesJobModel({
    required this.id,
    required this.app,
    required this.workflow,
    required this.status,
    required this.name,
    required this.createdAt,
    required this.startedAt,
    required this.completedAt,
    required this.batchName,
    required this.result,
    required this.workflowParams,
  });

  /// Parses the Json String and returns the resulting object as [MoisesJobModel].
  factory MoisesJobModel.fromString(String json) {
    return MoisesJobModel.fromJson(jsonDecode(json));
  }

  /// Converts [MoisesJobModel] to a JSON string.
  String toJsonString() => jsonEncode(toJson());

  /// Parses the Map and returns the resulting object as [MoisesJobModel].
  factory MoisesJobModel.fromJson(Map<String, dynamic> json) => _$MoisesJobModelFromJson(json);

  /// Converts [MoisesJobModel] to a JSON.
  Map<String, dynamic> toJson() => _$MoisesJobModelToJson(this);

  @override
  List<Object?> get props => [
        id,
        app,
        workflow,
        status,
        createdAt,
        startedAt,
        completedAt,
        batchName,
        result,
        workflowParams,
      ];
}
