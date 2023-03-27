import 'dart:convert';
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'moises_new_job_params_model.g.dart';

/// The [MoisesNewJobParamsModel] class.
@JsonSerializable(explicitToJson: true)
class MoisesNewJobParamsModel extends Equatable {
  /// The Input Url value
  @JsonKey(defaultValue: '')
  final String inputUrl;

  /// Instance of [MoisesNewJobParamsModel].
  const MoisesNewJobParamsModel({
    required this.inputUrl,
  });

  /// Parses the Json String and returns the resulting object as [MoisesNewJobParamsModel].
  factory MoisesNewJobParamsModel.fromString(String json) {
    return MoisesNewJobParamsModel.fromJson(jsonDecode(json));
  }

  /// Converts [MoisesNewJobParamsModel] to a JSON string.
  String toJsonString() => jsonEncode(toJson());

  /// Parses the Map and returns the resulting object as [MoisesNewJobParamsModel].
  factory MoisesNewJobParamsModel.fromJson(Map<String, dynamic> json) => _$MoisesNewJobParamsModelFromJson(json);

  /// Converts [MoisesNewJobParamsModel] to a JSON.
  Map<String, dynamic> toJson() => _$MoisesNewJobParamsModelToJson(this);

  @override
  List<Object?> get props => [inputUrl];
}
