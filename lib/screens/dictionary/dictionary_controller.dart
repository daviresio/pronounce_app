import 'package:flutter/material.dart';
import 'package:get/get_rx/get_rx.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/route_manager.dart';
import 'package:pedantic/pedantic.dart';
import 'package:pronounce_app/core/pronounce_routes.dart';
import 'package:pronounce_app/helpers/pronounce_record.dart';
import 'package:pronounce_app/services/dictionary_service.dart';
import 'package:pronounce_app/services/speech_service.dart';

class DictionaryController extends GetxController {
  final _isRecording = false.obs;
  final _freeText = ''.obs;
  final freeTextCtl = TextEditingController();
  final freeTextFocus = FocusNode();
  final _isLoading = false.obs;

  bool get isRecording => _isRecording.value;
  Future<void> setIsRecording([bool? value]) async {
    _isRecording.value = value ?? !isRecording;
    if (isRecording) {
      await PronounceRecord.startRecorder();
    } else {
      var filePath = await PronounceRecord.stopRecorder();
      // ignore: unused_local_variable
      var result = await SpeechService.calculateScore(
        filePath: filePath!,
        referenceText: 'Do it all night, all summer',
      );
    }
  }

  String get freeText => _freeText.value;
  set freeText(String value) => _freeText.value = value;

  bool get isLoading => _isLoading.value;
  set isLoading(bool value) => _isLoading.value = value;

  void clearFreeText() {
    freeText = freeTextCtl.text = '';
    freeTextCtl.text = '';
    freeTextFocus.unfocus();
  }

  Future<bool?> verifyWrittenWord() async {
    isLoading = true;
    var words = freeText.split(' ');
    var requests =
        words.map((word) => DictionaryService.getWordDescription(word: word));
    var results = await Future.wait(requests);
    isLoading = false;

    if (results.any((element) => element == null)) {
      return null;
    }

    if (results.any((element) => element!.entries.isEmpty)) {
      return false;
    }

    var audioBytes = await SpeechService.textToSpeech(text: freeText);

    if (audioBytes == null) {
      return null;
    }

    unawaited(
      Get.toNamed(PronounceRoutes.pratice, arguments: {
        'text': freeText,
        'dictionaries': results.map((e) => e!).toList(),
        'audioBytes': audioBytes,
      }),
    );

    clearFreeText();

    return true;
  }
}
