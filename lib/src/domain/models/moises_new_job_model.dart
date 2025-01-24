import 'dart:convert';
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'moises_new_job_model.g.dart';

/// The [MoisesNewJobModel] class.
@JsonSerializable(explicitToJson: true)
class MoisesNewJobModel extends Equatable {
  /// The New Job ID
  @JsonKey(defaultValue: '')
  final String name;

  /// The New Job workflow
  @JsonKey(defaultValue: '')
  final String workflow;

  /// The New Job params
  final Map<String, dynamic> params;

  /// The New Job metadata
  final Map<String, dynamic>? metadata;

  /// Instance of [MoisesNewJobModel].
  const MoisesNewJobModel({
    required this.name,
    required this.workflow,
    required this.params,
    this.metadata,
  });

  /// Parses the Json String and returns the resulting object as [MoisesNewJobModel].
  factory MoisesNewJobModel.fromString(String json) {
    return MoisesNewJobModel.fromJson(jsonDecode(json));
  }

  /// Converts [MoisesNewJobModel] to a JSON string.
  String toJsonString() => jsonEncode(toJson());

  /// Parses the Map and returns the resulting object as [MoisesNewJobModel].
  factory MoisesNewJobModel.fromJson(Map<String, dynamic> json) =>
      _$MoisesNewJobModelFromJson(json);

  /// Converts [MoisesNewJobModel] to a JSON.
  Map<String, dynamic> toJson() => _$MoisesNewJobModelToJson(this);

  @override
  List<Object?> get props => [name, workflow, params, metadata];
}
