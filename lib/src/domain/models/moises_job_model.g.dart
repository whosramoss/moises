// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'moises_job_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MoisesJobModel _$MoisesJobModelFromJson(Map<String, dynamic> json) =>
    MoisesJobModel(
      id: json['id'] as String? ?? '',
      app: json['app'] as String? ?? '',
      workflow: json['workflow'] as String? ?? '',
      status: json['status'] as String? ?? '',
      name: json['name'] as String? ?? '',
      createdAt: json['createdAt'] as String? ?? '',
      startedAt: json['startedAt'] as String? ?? '',
      completedAt: json['completedAt'] as String? ?? '',
      batchName: json['batchName'],
      result: json['result'] as Map<String, dynamic>,
      metadata: json['metadata'] as Map<String, dynamic>,
      workflowParams: MoisesWorkflowParamsModel.fromJson(
          json['workflowParams'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$MoisesJobModelToJson(MoisesJobModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'app': instance.app,
      'workflow': instance.workflow,
      'status': instance.status,
      'name': instance.name,
      'createdAt': instance.createdAt,
      'startedAt': instance.startedAt,
      'completedAt': instance.completedAt,
      'batchName': instance.batchName,
      'result': instance.result,
      'metadata': instance.metadata,
      'workflowParams': instance.workflowParams.toJson(),
    };
