import 'dart:convert';
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import 'package:moises/moises.dart';

part 'moises_job_filter_model.g.dart';

/// The [MoisesJobFilterModel] class.
@JsonSerializable(includeIfNull: false, explicitToJson: true)
class MoisesJobFilterModel extends Equatable {
  /// The Filter Status
  @JsonKey(toJson: toStatus, fromJson: fromStatus)
  final MoisesJobStatusEnum? status;

  /// The Filter Workflow
  final String? workflow;

  /// Instance of [MoisesJobFilterModel].
  const MoisesJobFilterModel({
    this.status,
    this.workflow,
  });

  /// Parses the Json String and returns the resulting object as [MoisesJobFilterModel].
  factory MoisesJobFilterModel.fromString(String json) {
    return MoisesJobFilterModel.fromJson(jsonDecode(json));
  }

  /// Get Status param inside [MoisesJobStatusEnum]
  static toStatus(MoisesJobStatusEnum? v) => v?.status;

  /// Get String value param
  static fromStatus(String? v) => v != null ? MoisesJobStatusEnum.getEnumByString(v) : null;

  /// Converts [MoisesJobFilterModel] to a JSON string.
  String toJsonString() => jsonEncode(toJson());

  /// Parses the Map and returns the resulting object as [MoisesJobFilterModel].
  factory MoisesJobFilterModel.fromJson(Map<String, dynamic> json) => _$MoisesJobFilterModelFromJson(json);

  /// Converts [MoisesJobFilterModel] to a JSON.
  Map<String, dynamic> toJson() => _$MoisesJobFilterModelToJson(this);

  @override
  List<Object?> get props => [status, workflow];
}
