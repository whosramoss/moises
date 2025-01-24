import 'package:moises/moises.dart';

import 'moises_key.dart';

Future<void> main() async {
  /// Searching for local keys
  final String key = await MoisesKey.get();
  if (key.isEmpty) return;

  /// Create a new client
  final Moises moises = Moises(key);

  /// Application
  await getApplication(moises);

  /// Workflow
  await getWorkflowList(moises);

  /// Jobs
  await getJobsList(moises);
  await getJob(moises);
  await deleteJob(moises);
  await createJob(moises);
}

Future<void> getApplication(Moises moises) async {
  try {
    final MoisesApplicationModel value = await moises.application.get();
    print('Application : ${value.toJson()}');
  } on MoisesException catch (e) {
    print('Error : ${e.error}');
  }
}

Future<void> getWorkflowList(Moises moises) async {
  try {
    final List<MoisesWorkflowModel> value = await moises.workflow.getAll(
      const MoisesWorkflowFilterModel(
        page: 0,
        size: 20,
      ),
    );
    print('Workflow List (${value.length}) : $value');
  } on MoisesException catch (e) {
    print('Error : ${e.error}');
  }
}

Future<void> getJobsList(Moises moises) async {
  try {
    final List<MoisesJobModel> value = await moises.job.getAll(
      const MoisesJobFilterModel(
        status: MoisesJobStatusEnum.succeeded,
        workflow: 'workflow-name',
        batchName: 'batch-name',
        page: 0,
        size: 20,
      ),
    );
    print('Job List Total: ${value.length} | $value');
  } on MoisesException catch (e) {
    print('Error : ${e.error}');
  }
}

Future<void> getJob(Moises moises) async {
  try {
    const String id = '00000000-0000-0000-0000-000000000000';
    final MoisesJobModel value = await moises.job.get(id);
    print('Job : ${value.toJson()}');
  } on MoisesException catch (e) {
    print('Error : ${e.error}');
  }
}

Future<void> createJob(Moises moises) async {
  try {
    final MoisesNewJobResultModel value = await moises.job.create(
      const MoisesNewJobModel(
        name: 'job-name',
        workflow: 'my-workflow-name',
        params: {
          'inputUrl': 'https://your-server.com/some-audio.wav',
        },
      ),
    );
    print('New Job Result : ${value.toJson()}');
  } on MoisesException catch (e) {
    print('Error : ${e.error}');
  }
}

Future<void> deleteJob(Moises moises) async {
  try {
    const String id = '00000000-0000-0000-0000-000000000000';
    await moises.job.delete(id);
    print('Job $id was successfully deleted');
  } on MoisesException catch (e) {
    print('Error : ${e.error}');
  }
}
