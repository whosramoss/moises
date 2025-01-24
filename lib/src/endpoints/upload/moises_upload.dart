import 'package:moises/moises.dart';
import 'package:moises/src/endpoints/upload/i_moises_upload.dart';
import 'package:moises/src/infrastructure/connect/i_moises_connect.dart';

/// Implementation class for `Upload` method requests
class MoisesUpload extends IMoisesUpload {
  /// Path Upload Request
  static String path = 'upload';

  final IMoisesConnect _connect;

  /// The instance of the `MoisesUpload` class.
  MoisesUpload(this._connect);

  @override
  Future<MoisesUploadModel> get() async {
    final response = await _connect.get(path);

    dynamic data = response.data;

    return MoisesUploadModel.fromJson(data);
  }
}
