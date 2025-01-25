// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'moises_workflow_filter_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MoisesWorkflowFilterModel _$MoisesWorkflowFilterModelFromJson(
        Map<String, dynamic> json) =>
    MoisesWorkflowFilterModel(
      size: json['size'] as int?,
      page: json['page'] as int?,
    );

Map<String, dynamic> _$MoisesWorkflowFilterModelToJson(
    MoisesWorkflowFilterModel instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('size', instance.size);
  writeNotNull('page', instance.page);
  return val;
}
