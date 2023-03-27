import 'dart:convert';
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'moises_new_job_result_model.g.dart';

/// The [MoisesNewJobResultModel] class.
@JsonSerializable(explicitToJson: true)
class MoisesNewJobResultModel extends Equatable {
  /// The id value
  @JsonKey(defaultValue: '')
  final String id;

  /// The New Job Id value
  @JsonKey(defaultValue: '')
  final String jobId;

  /// Instance of [MoisesNewJobResultModel].
  const MoisesNewJobResultModel({required this.id, required this.jobId});

  /// Parses the Json String and returns the resulting object as [MoisesNewJobResultModel].
  factory MoisesNewJobResultModel.fromString(String json) {
    return MoisesNewJobResultModel.fromJson(jsonDecode(json));
  }

  /// Converts [MoisesNewJobResultModel] to a JSON string.
  String toJsonString() => jsonEncode(toJson());

  /// Parses the Map and returns the resulting object as [MoisesNewJobResultModel].
  factory MoisesNewJobResultModel.fromJson(Map<String, dynamic> json) =>
      _$MoisesNewJobResultModelFromJson(json);

  /// Converts [MoisesNewJobResultModel] to a JSON.
  Map<String, dynamic> toJson() => _$MoisesNewJobResultModelToJson(this);

  @override
  List<Object?> get props => [id, jobId];
}
