import 'dart:developer';
import 'package:moises/moises.dart';

import 'moises_key.dart';

Future<void> main() async {
  /// Searching for local keys
  String key = await MoisesKey.get();
  if (key.isEmpty) return;

  /// Create a new client
  final Moises moises = Moises(key);

  /// Get Application
  await getApplication(moises);

  /// Get All Jobs
  const MoisesJobFilterModel filter = MoisesJobFilterModel(
    status: MoisesJobStatusEnum.succeeded,
    workflow: 'workflow-name',
    batchName: 'batch-name',
    page: 0,
    size: 20,
  );
  await getAllJobs(moises, filter);

  /// Get Job
  const String jobId = '00000000-0000-0000-0000-000000000000';
  await getJobById(moises, jobId);

  /// Delete a Job
  await deleteJob(moises, jobId);

  /// Create a Job
  const newJob = MoisesNewJobModel(
    name: 'JOB NAME',
    workflow: 'my-workflow-id',
    params: {
      'inputUrl': 'https://your-server.com/some-audio.m4a',
    },
  );

  await createJob(moises, newJob);
}

Future<void> getApplication(Moises moises) async {
  try {
    final MoisesApplicationModel value = await moises.application.get();
    log('Application : $value');
  } on MoisesException catch (e) {
    log('Error : ${e.error}');
  }
}

Future<void> getAllJobs(Moises moises, MoisesJobFilterModel filter) async {
  try {
    final List<MoisesJobModel> value = await moises.job.getAll(filter);
    log('Job List (${value.length}) : $value');
  } on MoisesException catch (e) {
    log('Error : ${e.error}');
  }
}

Future<void> getJobById(Moises moises, String id) async {
  try {
    final MoisesJobModel value = await moises.job.get(id);
    log('Job : $value');
  } on MoisesException catch (e) {
    log('Error : ${e.error}');
  }
}

Future<void> createJob(Moises moises, MoisesNewJobModel newJob) async {
  try {
    final MoisesNewJobResultModel value = await moises.job.create(newJob);
    log('New Job Result : $value');
  } on MoisesException catch (e) {
    log('Error : ${e.error}');
  }
}

Future<void> deleteJob(Moises moises, String id) async {
  try {
    await moises.job.delete(id);
    log('Job $id was successfully deleted');
  } on MoisesException catch (e) {
    log('Error : ${e.error}');
  }
}
