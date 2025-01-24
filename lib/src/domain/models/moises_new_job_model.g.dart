// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'moises_new_job_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MoisesNewJobModel _$MoisesNewJobModelFromJson(Map<String, dynamic> json) =>
    MoisesNewJobModel(
      name: json['name'] as String? ?? '',
      workflow: json['workflow'] as String? ?? '',
      params: json['params'] as Map<String, dynamic>,
      metadata: json['metadata'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$MoisesNewJobModelToJson(MoisesNewJobModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'workflow': instance.workflow,
      'params': instance.params,
      'metadata': instance.metadata,
    };
