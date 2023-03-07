// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'moises_error.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MoisesError _$MoisesErrorFromJson(Map<String, dynamic> json) => MoisesError(
      statusCode: json['statusCode'] as int? ?? 0,
      code: json['code'] as String? ?? '',
      error: json['error'] as String? ?? '',
      message: json['message'] as String? ?? '',
    );

Map<String, dynamic> _$MoisesErrorToJson(MoisesError instance) =>
    <String, dynamic>{
      'statusCode': instance.statusCode,
      'code': instance.code,
      'error': instance.error,
      'message': instance.message,
    };
