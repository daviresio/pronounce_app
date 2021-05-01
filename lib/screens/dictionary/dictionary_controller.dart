import 'package:get/get_rx/get_rx.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:pronounce_app/helpers/pronounce_record.dart';
import 'package:pronounce_app/services/speech_service.dart';

class DictionaryController extends GetxController {
  final _isRecording = false.obs;
  final record = PronounceRecord();

  @override
  void onInit() async {
    super.onInit();
    await checkPermissions();
    await record.openAudioSession();
  }

  @override
  void dispose() {
    record.dispose();
    super.dispose();
  }

  bool get isRecording => _isRecording.value;
  Future<void> setIsRecording([bool? value]) async {
    _isRecording.value = value ?? !isRecording;
    if (isRecording) {
      await record.record();
    } else {
      var filePath = await record.stopRecorder();
      var result = await SpeechService.calculateScore(
        filePath: filePath!,
        referenceText: 'Do it all night, all summer',
      );
    }
  }

  Future<void> checkPermissions() async {
    if (!(await Permission.microphone.request().isGranted) ||
        !(await Permission.storage.request().isGranted)) {
      var statuses = await [
        Permission.microphone,
        Permission.storage,
      ].request();
      print(statuses[Permission.microphone]);
    }
  }
}
