import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;
import 'package:uuid/uuid.dart';

class PronounceFile {
  static Future<String> temporaryDirectory() async {
    var tempDir = await getTemporaryDirectory();
    return tempDir.path;
  }

  static Future<String> documentsDirectory() async {
    var appDocDir = await getApplicationDocumentsDirectory();
    return appDocDir.path;
  }

  static Future<String> generateTempFilePath() async {
    var uuid = Uuid();

    var directoryPath = await temporaryDirectory();
    var fileName = uuid.v4();

    return p.join(directoryPath, fileName);
  }
}
