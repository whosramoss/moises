import 'package:moises/src/domain/models/moises_application_model.dart';

/// Interface class for `Application` method requests
abstract class IMoisesApplication {
  /// Get Application Request Method
  Future<MoisesApplicationModel> get();
}
