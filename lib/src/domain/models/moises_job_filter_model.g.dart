// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'moises_job_filter_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MoisesJobFilterModel _$MoisesJobFilterModelFromJson(
        Map<String, dynamic> json) =>
    MoisesJobFilterModel(
      status: MoisesJobFilterModel.fromStatus(json['status'] as String?),
      workflow: json['workflow'] as String?,
      batchName: json['batchName'] as String?,
      page: json['page'] as int?,
      size: json['size'] as int?,
    );

Map<String, dynamic> _$MoisesJobFilterModelToJson(
    MoisesJobFilterModel instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('status', MoisesJobFilterModel.toStatus(instance.status));
  writeNotNull('workflow', instance.workflow);
  writeNotNull('batchName', instance.batchName);
  writeNotNull('size', instance.size);
  writeNotNull('page', instance.page);
  return val;
}
