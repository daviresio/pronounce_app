import 'package:get/get_rx/get_rx.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:pronounce_app/helpers/pronounce_record.dart';
import 'package:pronounce_app/services/speech_service.dart';

class DictionaryController extends GetxController {
  final _isRecording = false.obs;

  bool get isRecording => _isRecording.value;
  Future<void> setIsRecording([bool? value]) async {
    _isRecording.value = value ?? !isRecording;
    // if (isRecording) {
    //   await _record.record();
    // } else {
    //   await _record.stopRecorder();
    //   var filePath = _record.filePath;
    //   await SpeechService.speech(filePath: filePath!);
    // }
  }

  final _record = PronounceRecord();

  Future<void> checkPermissions() async {
    if (!(await Permission.contacts.request().isGranted)) {
      var statuses = await [
        Permission.location,
        Permission.storage,
      ].request();
      print(statuses[Permission.location]);
    }
  }
}
