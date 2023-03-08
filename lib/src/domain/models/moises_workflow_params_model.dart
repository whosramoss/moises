import 'dart:convert';
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'moises_workflow_params_model.g.dart';

/// The [MoisesWorkflowParamsModel] class.
@JsonSerializable(explicitToJson: true)
class MoisesWorkflowParamsModel extends Equatable {
  /// The Workflow Input Url Param
  @JsonKey(defaultValue: '')
  final String inputUrl;

  /// Instance of [MoisesWorkflowParamsModel].
  const MoisesWorkflowParamsModel({
    required this.inputUrl,
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
  List<Object?> get props => [inputUrl];
}
