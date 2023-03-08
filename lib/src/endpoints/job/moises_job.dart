import 'package:moises/src/domain/models/moises_job_filter_model.dart';
import 'package:moises/src/domain/models/moises_new_job_model.dart';
import 'package:moises/src/domain/models/moises_job_model.dart';
import 'package:moises/src/domain/models/moises_new_job_result_model.dart';
import 'package:moises/src/endpoints/job/i_moises_job.dart';
import 'package:moises/src/infrastructure/connect/i_moises_connect.dart';

/// Implementation class for `Job` method requests
class MoisesJob extends IMoisesJob {
  /// Path Job Request
  static String path = 'job';

  final IMoisesConnect _connect;

  /// The instance of the `MoisesJob` class.
  MoisesJob(this._connect);

  @override
  Future<List<MoisesJobModel>> getAll(MoisesJobFilterModel filter) async {
    final response = await _connect.get(path, queryParameters: filter.toJson());

    List<dynamic> data = response.data;

    return data.map((e) => MoisesJobModel.fromJson(e)).toList();
  }

  @override
  Future<MoisesJobModel> get(String id) async {
    final response = await _connect.get('$path/$id');

    dynamic data = response.data;

    return MoisesJobModel.fromJson(data);
  }

  @override
  Future<MoisesNewJobResultModel> create(MoisesNewJobModel job) async {
    final response = await _connect.post(
      path,
      headers: {'Content-Type': 'application/json'},
      data: job.toJson(),
    );

    dynamic data = response.data;

    return MoisesNewJobResultModel.fromJson(data);
  }

  @override
  Future<void> delete(String id) async {
    await _connect.delete('$path/$id');
  }
}
