import 'package:moises/moises.dart';

/// Interface class for `WorkFlow` method requests
abstract class IMoisesWorkFlow {
  /// Request method to get workflows
  Future<List<MoisesWorkflowModel>> getAll(MoisesWorkflowFilterModel filter);
}
