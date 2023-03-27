import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'moises_error.g.dart';

/// The [MoisesError] class.
@JsonSerializable(explicitToJson: true)
class MoisesError extends Equatable {
  /// The Error Status Code
  @JsonKey(defaultValue: 0)
  final int statusCode;

  /// The Error Code
  @JsonKey(defaultValue: '')
  final String? code;

  /// The Error itself
  @JsonKey(defaultValue: '')
  final String error;

  /// The Error Message
  @JsonKey(defaultValue: '')
  final String message;

  /// Instance of [MoisesError].
  const MoisesError({
    required this.statusCode,
    required this.code,
    required this.error,
    required this.message,
  });

  /// Parses the Json String and returns the resulting object as [MoisesError].
  factory MoisesError.fromString(String json) {
    return MoisesError.fromJson(jsonDecode(json));
  }

  /// Pass a [DioError] and returns the resulting object as [MoisesError].
  factory MoisesError.fromDioError(DioError e) {
    return MoisesError(
      statusCode: e.response?.statusCode ?? 0,
      error: e.type.name,
      message: e.message ?? '',
      code: null,
    );
  }

  /// Converts [MoisesError] to a JSON string.
  String toJsonString() => jsonEncode(toJson());

  /// Parses the Map and returns the resulting object as [MoisesError].
  factory MoisesError.fromJson(Map<String, dynamic> json) =>
      _$MoisesErrorFromJson(json);

  /// Converts [MoisesError] to a JSON.
  Map<String, dynamic> toJson() => _$MoisesErrorToJson(this);

  @override
  List<Object?> get props => [statusCode, error, message, code];
}
