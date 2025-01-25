import 'dart:convert';
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'moises_workflow_filter_model.g.dart';

/// The [MoisesWorkflowFilterModel] class.
@JsonSerializable(includeIfNull: false, explicitToJson: true)
class MoisesWorkflowFilterModel extends Equatable {
  /// The Filter Size
  final int? size;

  /// The Filter Page
  final int? page;

  /// Instance of [MoisesWorkflowFilterModel].
  const MoisesWorkflowFilterModel({
    this.size,
    this.page,
  });

  /// Parses the Json String and returns the resulting object as [MoisesWorkflowFilterModel].
  factory MoisesWorkflowFilterModel.fromString(String json) {
    return MoisesWorkflowFilterModel.fromJson(jsonDecode(json));
  }

  /// Converts [MoisesWorkflowFilterModel] to a JSON string.
  String toJsonString() => jsonEncode(toJson());

  /// Parses the Map and returns the resulting object as [MoisesWorkflowFilterModel].
  factory MoisesWorkflowFilterModel.fromJson(Map<String, dynamic> json) =>
      _$MoisesWorkflowFilterModelFromJson(json);

  /// Converts [MoisesWorkflowFilterModel] to a JSON.
  Map<String, dynamic> toJson() => _$MoisesWorkflowFilterModelToJson(this);

  @override
  List<Object?> get props => [size, page];
}
