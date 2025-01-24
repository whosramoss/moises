import 'dart:convert';
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'moises_upload_model.g.dart';

/// The [MoisesUploadModel] class.
@JsonSerializable(explicitToJson: true)
class MoisesUploadModel extends Equatable {
  /// The Upload uploadUrl
  @JsonKey(defaultValue: '')
  final String uploadUrl;

  /// The Upload downloadUrl
  @JsonKey(defaultValue: '')
  final String downloadUrl;

  /// Instance of [MoisesUploadModel].
  const MoisesUploadModel({
    required this.uploadUrl,
    required this.downloadUrl,
  });

  /// Parses the Json String and returns the resulting object as [MoisesUploadModel].
  factory MoisesUploadModel.fromString(String json) {
    return MoisesUploadModel.fromJson(jsonDecode(json));
  }

  /// Converts [MoisesUploadModel] to a JSON string.
  String toJsonString() => jsonEncode(toJson());

  /// Parses the Map and returns the resulting object as [MoisesUploadModel].
  factory MoisesUploadModel.fromJson(Map<String, dynamic> json) =>
      _$MoisesUploadModelFromJson(json);

  /// Converts [MoisesUploadModel] to a JSON.
  Map<String, dynamic> toJson() => _$MoisesUploadModelToJson(this);

  @override
  List<Object?> get props => [uploadUrl, downloadUrl];
}
