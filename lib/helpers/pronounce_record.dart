import 'dart:convert';

import 'package:flutter_sound/flutter_sound.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:pronounce_app/core/pronounce_error.dart';
import 'package:pronounce_app/helpers/pronounce_file.dart';

class PronounceRecord {
  PronounceRecord._();

  static final _rec = FlutterSoundRecorder();
  static String? _filePath;

  static Future<void> openAudioSession() async {
    await checkPermissions();
    try {
      await _rec.openAudioSession();
    } catch (e, s) {
      PronounceError.recordError(e, s);
    }
  }

  static void dispose() {
    _rec.closeAudioSession();
  }

  static Future<void> startRecorder() async {
    _filePath = (await PronounceFile.generateTempFilePath()) + '.wav';
    await _rec.startRecorder(
      toFile: _filePath!,
      codec: Codec.pcm16WAV,
    );
  }

  static Future<String?> stopRecorder() async {
    await _rec.stopRecorder();
    var path = _filePath;
    _filePath = null;
    return path;
  }

  static Future<void> checkPermissions() async {
    if (!(await Permission.microphone.request().isGranted) ||
        !(await Permission.storage.request().isGranted)) {
      await [
        Permission.microphone,
        Permission.storage,
      ].request();
    }
  }
}
