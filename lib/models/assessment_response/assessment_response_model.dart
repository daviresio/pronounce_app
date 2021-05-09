import 'package:freezed_annotation/freezed_annotation.dart';

part 'assessment_response_model.freezed.dart';
part 'assessment_response_model.g.dart';

@freezed
class AssessmentResponseModel with _$AssessmentResponseModel {
  @JsonSerializable(fieldRename: FieldRename.pascal)
  factory AssessmentResponseModel({
    required String recognitionStatus,
    required int offset,
    required int duration,
    required List<AssessmentDetailModel> nBest,
  }) = _AssessmentResponseModel;

  factory AssessmentResponseModel.fromJson(Map<String, dynamic> json) =>
      _$AssessmentResponseModelFromJson(json);
}

@freezed
class AssessmentDetailModel with _$AssessmentDetailModel {
  @JsonSerializable(fieldRename: FieldRename.pascal)
  factory AssessmentDetailModel({
    required String lexical,
    required String iTN,
    required String maskedITN,
    required String display,
    required double accuracyScore,
    required double fluencyScore,
    required double completenessScore,
    required double pronScore,
    required List<AssessmentWordModel> words,
  }) = _AssessmentDetailModel;

  factory AssessmentDetailModel.fromJson(Map<String, dynamic> json) =>
      _$AssessmentDetailModelFromJson(json);
}

@freezed
class AssessmentWordModel with _$AssessmentWordModel {
  @JsonSerializable(fieldRename: FieldRename.pascal)
  factory AssessmentWordModel({
    required String word,
    required double accuracyScore,
    required String errorType,
    required int offset,
    required int duration,
    required List<AssessmentPhonemeModel> phonemes,
  }) = _AssessmentWordModel;

  factory AssessmentWordModel.fromJson(Map<String, dynamic> json) =>
      _$AssessmentWordModelFromJson(json);
}

@freezed
class AssessmentPhonemeModel with _$AssessmentPhonemeModel {
  @JsonSerializable(fieldRename: FieldRename.pascal)
  factory AssessmentPhonemeModel({
    required String phoneme,
    required double accuracyScore,
    required int offset,
    required int duration,
  }) = _AssessmentPhonemeModel;

  factory AssessmentPhonemeModel.fromJson(Map<String, dynamic> json) =>
      _$AssessmentPhonemeModelFromJson(json);
}
