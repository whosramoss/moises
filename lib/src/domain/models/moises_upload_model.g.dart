// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'moises_upload_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MoisesUploadModel _$MoisesUploadModelFromJson(Map<String, dynamic> json) =>
    MoisesUploadModel(
      uploadUrl: json['uploadUrl'] as String? ?? '',
      downloadUrl: json['downloadUrl'] as String? ?? '',
    );

Map<String, dynamic> _$MoisesUploadModelToJson(MoisesUploadModel instance) =>
    <String, dynamic>{
      'uploadUrl': instance.uploadUrl,
      'downloadUrl': instance.downloadUrl,
    };
