import 'package:moises/src/domain/models/moises_application_model.dart';
import 'package:moises/src/endpoints/application/i_moises_application.dart';
import 'package:moises/src/infrastructure/connect/i_moises_connect.dart';

/// Implementation class for `Application` method requests
class MoisesApplication extends IMoisesApplication {
  /// Path Application Request
  static String path = 'application';

  final IMoisesConnect _connect;

  /// The instance of the `MoisesApplication` class.
  MoisesApplication(this._connect);

  @override
  Future<MoisesApplicationModel> get() async {
    final response = await _connect.get(path);

    dynamic data = response.data;

    return MoisesApplicationModel.fromJson(data);
  }
}
