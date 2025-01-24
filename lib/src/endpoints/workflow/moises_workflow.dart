import 'package:moises/moises.dart';
import 'package:moises/src/endpoints/workflow/i_moises_workflow.dart';
import 'package:moises/src/infrastructure/connect/i_moises_connect.dart';

/// Implementation class for `Workflow` method requests
class MoisesWorkFlow extends IMoisesWorkFlow {
  /// Path Workflow Request
  static String path = 'workflow';

  final IMoisesConnect _connect;

  /// The instance of the `MoisesWorkFlow` class.
  MoisesWorkFlow(this._connect);

  @override
  Future<List<MoisesWorkflowModel>> getAll(
    MoisesWorkflowFilterModel filter,
  ) async {
    final response = await _connect.get(path, queryParameters: filter.toJson());

    List<dynamic> data = response.data['workflows'];

    return data.map((e) => MoisesWorkflowModel.fromJson(e)).toList();
  }
}
