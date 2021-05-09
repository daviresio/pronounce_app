import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:pronounce_app/core/pronounce_error.dart';
import 'package:pronounce_app/models/assessment_response/assessment_response_model.dart';

class SpeechService {
  static Future<AssessmentResponseModel?> calculateScore({
    required String filePath,
    required String referenceText,
  }) async {
    var url = Uri.parse(
      'https://eastus.stt.speech.microsoft.com/speech/recognition/conversation/cognitiveservices/v1?language=en-US',
    );

    var assessmentParams = {
      'ReferenceText': referenceText,
      'GradingSystem': 'HundredMark',
      'Granularity': 'Phoneme',
      'Dimension': 'Comprehensive',
      'EnableMiscue': 'True',
      // 'ScenarioId': '',
    };

    var headers = {
      'Ocp-Apim-Subscription-Key': '6beda8ccf30e45c494ac1a5813a9ea07',
      'Content-Type': 'audio/wav',
      'Accept': '*/*',
      'Transfer-Encoding': 'chunked',
      'Pronunciation-Assessment':
          base64.encode(utf8.encode(jsonEncode(assessmentParams))),
    };

    try {
      var response = await http.post(url,
          body: File(filePath).readAsBytesSync(), headers: headers);
      var jsonResponse = jsonDecode(response.body);
      var responseData = AssessmentResponseModel.fromJson(jsonResponse);
      return responseData;
    } catch (e, s) {
      PronounceError.recordError(e, s);
      return null;
    }
  }
}
