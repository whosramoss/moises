import 'package:moises/src/endpoints/application/i_moises_application.dart';
import 'package:moises/src/endpoints/application/moises_application.dart';
import 'package:moises/src/endpoints/job/i_moises_job.dart';
import 'package:moises/src/endpoints/job/moises_job.dart';
import 'package:moises/src/endpoints/workflow/i_moises_workflow.dart';
import 'package:moises/src/endpoints/workflow/moises_workflow.dart';
import 'package:moises/src/infrastructure/connect/moises_connect.dart';

/// The `Moises` class.
class Moises extends MoisesApiClient {
  /// The instance of the `Moises` class.
  Moises(super.apiKey);
}

/// The `MoisesApiClient` class.
class MoisesApiClient {
  /// The API key to use to authenticate with the API.
  final String apiKey;

  /// Create an http connection with the API
  final MoisesConnect _connect;

  /// The instance of the `MoisesApiClient` class.
  MoisesApiClient(
    this.apiKey, {
    MoisesConnect? connect,
  }) : _connect = connect ??= MoisesConnect.init(apiKey);

  /// Getter method to fetch `Application` requests
  IMoisesApplication get application => MoisesApplication(_connect);

  /// Getter method to fetch `Job` requests
  IMoisesJob get job => MoisesJob(_connect);

  /// Getter method to fetch `WorkFlow` requests
  IMoisesWorkFlow get workflow => MoisesWorkFlow(_connect);
}
