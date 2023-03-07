import 'package:moises/src/domain/models/moises_job_filter_model.dart';
import 'package:moises/src/domain/models/moises_job_model.dart';
import 'package:moises/src/domain/models/moises_new_job_model.dart';
import 'package:moises/src/domain/models/moises_new_job_result_model.dart';

/// Interface class for `Job` method requests
abstract class IMoisesJob {
  /// Request method to Get all jobs
  Future<List<MoisesJobModel>> getAll(MoisesJobFilterModel filter);

  /// Request method to Get a job by ID
  Future<MoisesJobModel> get(String id);

  /// Request method to Create a job with `MoisesNewJobModel` details
  Future<MoisesNewJobResultModel> create(MoisesNewJobModel job);

  /// Request method to Delete a job by ID
  Future<void> delete(String id);
}
