import 'dart:convert';

import 'package:flutter_sound/flutter_sound.dart';
import 'package:pronounce_app/helpers/pronounce_file.dart';

class PronounceRecord {
  final rec = FlutterSoundRecorder();
  String? filePath;

  Future<void> openAudioSession() async {
    await rec.openAudioSession();
  }

  void dispose() {
    rec.closeAudioSession();
  }

  Future<void> record() async {
    filePath = (await PronounceFile.generateTempFilePath()) + '.wav';
    await rec.startRecorder(
      toFile: filePath!,
      codec: Codec.pcm16WAV,
    );
  }

  Future<String?> stopRecorder() async {
    await rec.stopRecorder();
    var path = filePath;
    filePath = null;
    return path;
  }
}
