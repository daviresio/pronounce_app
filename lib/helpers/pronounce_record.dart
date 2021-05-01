import 'package:flutter_sound/flutter_sound.dart';
import 'package:pronounce_app/helpers/pronounce_file.dart';
import 'package:flutter_audio_recorder/flutter_audio_recorder.dart';

class PronounceRecord {
  FlutterSoundRecorder? _myRecorder;
  FlutterAudioRecorder? recorder;
  PronounceRecord() : _myRecorder = FlutterSoundRecorder();
  String? filePath;

  Future<FlutterSoundRecorder?> openAudioSession() {
    return _myRecorder!.openAudioSession();
  }

  void dispose() {
    _myRecorder!.closeAudioSession();
    _myRecorder = null;
  }

  Future<void> record() async {
    filePath = (await PronounceFile.generateTempFilePath()) + '.wav';
    recorder = FlutterAudioRecorder(
      filePath!,
      audioFormat: AudioFormat.WAV,
    );
    await recorder!.initialized;
    await recorder!.start();
    await recorder!.current(channel: 0);
  }

  Future<String?> stopRecorder() async {
    await recorder!.stop();
    var path = filePath;
    filePath = null;
    return path;
  }
}
