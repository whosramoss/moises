import 'package:moises/moises.dart';

/// Interface class for `Upload` method requests
abstract class IMoisesUpload {
  /// Request method to get Upload
  Future<MoisesUploadModel> get();
}
