// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'assessment_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AssessmentResponseModel _$_$_AssessmentResponseModelFromJson(
    Map<String, dynamic> json) {
  return _$_AssessmentResponseModel(
    recognitionStatus: json['RecognitionStatus'] as String,
    offset: json['Offset'] as int,
    duration: json['Duration'] as int,
    nBest: (json['NBest'] as List<dynamic>)
        .map((e) => AssessmentDetailModel.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$_$_AssessmentResponseModelToJson(
        _$_AssessmentResponseModel instance) =>
    <String, dynamic>{
      'RecognitionStatus': instance.recognitionStatus,
      'Offset': instance.offset,
      'Duration': instance.duration,
      'NBest': instance.nBest,
    };

_$_AssessmentDetailModel _$_$_AssessmentDetailModelFromJson(
    Map<String, dynamic> json) {
  return _$_AssessmentDetailModel(
    lexical: json['Lexical'] as String,
    iTN: json['ITN'] as String,
    maskedITN: json['MaskedITN'] as String,
    display: json['Display'] as String,
    accuracyScore: (json['AccuracyScore'] as num).toDouble(),
    fluencyScore: (json['FluencyScore'] as num).toDouble(),
    completenessScore: (json['CompletenessScore'] as num).toDouble(),
    pronScore: (json['PronScore'] as num).toDouble(),
    words: (json['Words'] as List<dynamic>)
        .map((e) => AssessmentWordModel.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$_$_AssessmentDetailModelToJson(
        _$_AssessmentDetailModel instance) =>
    <String, dynamic>{
      'Lexical': instance.lexical,
      'ITN': instance.iTN,
      'MaskedITN': instance.maskedITN,
      'Display': instance.display,
      'AccuracyScore': instance.accuracyScore,
      'FluencyScore': instance.fluencyScore,
      'CompletenessScore': instance.completenessScore,
      'PronScore': instance.pronScore,
      'Words': instance.words,
    };

_$_AssessmentWordModel _$_$_AssessmentWordModelFromJson(
    Map<String, dynamic> json) {
  return _$_AssessmentWordModel(
    word: json['Word'] as String,
    accuracyScore: (json['AccuracyScore'] as num).toDouble(),
    errorType: json['ErrorType'] as String,
    offset: json['Offset'] as int,
    duration: json['Duration'] as int,
    phonemes: (json['Phonemes'] as List<dynamic>)
        .map((e) => AssessmentPhonemeModel.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$_$_AssessmentWordModelToJson(
        _$_AssessmentWordModel instance) =>
    <String, dynamic>{
      'Word': instance.word,
      'AccuracyScore': instance.accuracyScore,
      'ErrorType': instance.errorType,
      'Offset': instance.offset,
      'Duration': instance.duration,
      'Phonemes': instance.phonemes,
    };

_$_AssessmentPhonemeModel _$_$_AssessmentPhonemeModelFromJson(
    Map<String, dynamic> json) {
  return _$_AssessmentPhonemeModel(
    phoneme: json['Phoneme'] as String,
    accuracyScore: (json['AccuracyScore'] as num).toDouble(),
    offset: json['Offset'] as int,
    duration: json['Duration'] as int,
  );
}

Map<String, dynamic> _$_$_AssessmentPhonemeModelToJson(
        _$_AssessmentPhonemeModel instance) =>
    <String, dynamic>{
      'Phoneme': instance.phoneme,
      'AccuracyScore': instance.accuracyScore,
      'Offset': instance.offset,
      'Duration': instance.duration,
    };
