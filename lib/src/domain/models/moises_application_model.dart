import 'dart:convert';
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'moises_application_model.g.dart';

/// The [MoisesApplicationModel] class.
@JsonSerializable(explicitToJson: true)
class MoisesApplicationModel extends Equatable {
  /// The Application ID
  @JsonKey(defaultValue: '')
  final String id;

  /// The Application Name
  @JsonKey(defaultValue: '')
  final String name;

  /// Instance of [MoisesApplicationModel].
  const MoisesApplicationModel({required this.id, required this.name});

  /// Parses the Json String and returns the resulting object as [MoisesApplicationModel].
  factory MoisesApplicationModel.fromString(String json) {
    return MoisesApplicationModel.fromJson(jsonDecode(json));
  }

  /// Converts [MoisesApplicationModel] to a JSON string.
  String toJsonString() => jsonEncode(toJson());

  /// Parses the Map and returns the resulting object as [MoisesApplicationModel].
  factory MoisesApplicationModel.fromJson(Map<String, dynamic> json) => _$MoisesApplicationModelFromJson(json);

  /// Converts [MoisesApplicationModel] to a JSON.
  Map<String, dynamic> toJson() => _$MoisesApplicationModelToJson(this);

  @override
  List<Object?> get props => [id, name];
}
