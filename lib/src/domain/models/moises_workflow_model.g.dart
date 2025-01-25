// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'moises_workflow_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MoisesWorkflowModel _$MoisesWorkflowModelFromJson(Map<String, dynamic> json) =>
    MoisesWorkflowModel(
      id: json['id'] as String? ?? '',
      name: json['name'] as String? ?? '',
      slug: json['slug'] as String? ?? '',
      description: json['description'] as String? ?? '',
      createdAt: json['createdAt'] as String? ?? '',
      updatedAt: json['updatedAt'] as String? ?? '',
    );

Map<String, dynamic> _$MoisesWorkflowModelToJson(
        MoisesWorkflowModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'slug': instance.slug,
      'description': instance.description,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };
