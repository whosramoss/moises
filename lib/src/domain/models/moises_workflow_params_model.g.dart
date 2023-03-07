// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'moises_workflow_params_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MoisesWorkflowParamsModel _$MoisesWorkflowParamsModelFromJson(
        Map<String, dynamic> json) =>
    MoisesWorkflowParamsModel(
      apiKey: json['apiKey'] as String? ?? '',
      inputUrl: json['inputUrl'] as String? ?? '',
      graph: json['graph'] == null
          ? null
          : MoisesWorkflowGraphModel.fromJson(
              json['graph'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$MoisesWorkflowParamsModelToJson(
        MoisesWorkflowParamsModel instance) =>
    <String, dynamic>{
      'apiKey': instance.apiKey,
      'inputUrl': instance.inputUrl,
      'graph': instance.graph?.toJson(),
    };
