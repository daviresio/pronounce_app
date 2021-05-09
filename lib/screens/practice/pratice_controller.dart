import 'dart:typed_data';

import 'package:get/get.dart';
import 'package:pronounce_app/helpers/pronounce_player.dart';
import 'package:pronounce_app/helpers/pronounce_record.dart';
import 'package:pronounce_app/models/assessment_response/assessment_response_model.dart';
import 'package:pronounce_app/models/dictionary/dictionary_model.dart';
import 'package:pronounce_app/services/speech_service.dart';

class PraticeController extends GetxController {
  final _textToSpeech = ''.obs;
  final _dictionaries = <DictionaryModel>[].obs;
  final _audioBytes = Uint8List(0).obs;
  final _filePath = ''.obs;
  final _isRecording = false.obs;
  final _isLoading = false.obs;
  final _recognizedText = AssessmentResponseModel(
    recognitionStatus: '',
    offset: 0,
    duration: 0,
    nBest: [],
  ).obs;

  final _record = PronounceRecord();

  @override
  void onInit() async {
    super.onInit();
    await _record.openAudioSession();
  }

  String get textToSpeech => _textToSpeech.value;
  set textToSpeech(String value) => _textToSpeech.value = value;

  List<DictionaryModel> get dictionaries => _dictionaries;
  set dictionaries(List<DictionaryModel> value) => _dictionaries.value = value;

  Uint8List get audioBytes => _audioBytes.value;
  set audioBytes(Uint8List value) => _audioBytes.value = value;

  String get filePath => _filePath.value;
  set filePath(String value) => _filePath.value = value;

  bool get isRecording => _isRecording.value;
  set isRecording(bool value) => _isRecording.value = value;

  bool get isLoading => _isLoading.value;
  set isLoading(bool value) => _isLoading.value = value;

  AssessmentResponseModel get recognizedData => _recognizedText.value;
  set recognizedData(AssessmentResponseModel value) =>
      _recognizedText.value = value;

  List<AssessmentWordModel> get recognizedWords {
    if (recognizedData.nBest.isEmpty) return [];

    return recognizedData.nBest.first.words;
  }

  List<List<AssessmentPhonemeModel>> get recognizedPhonemes {
    if (recognizedWords.isEmpty) return [];

    return recognizedWords.map((e) => e.phonemes).toList();
  }

  void startRecord() {
    isRecording = true;
    _record.startRecorder();
  }

  void stopRecorder() async {
    isRecording = false;
    isLoading = true;
    filePath = (await _record.stopRecorder()) ?? '';
    var result = await calculateScore(filePath: filePath);
    recognizedData = result!;
    isLoading = false;
  }

  Future<AssessmentResponseModel?> calculateScore({
    required String filePath,
  }) async {
    return SpeechService.calculateScore(
      filePath: filePath,
      referenceText: textToSpeech,
    );
  }

  Future<void> playReferenceSound() async {
    await PronouncePlayer.playBytes(audioBytes);
  }

  Future<void> playRecordedSound() async {
    await PronouncePlayer.playLocal(filePath);
  }
}
