// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'assessment_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AssessmentResponseModel _$AssessmentResponseModelFromJson(
    Map<String, dynamic> json) {
  return _AssessmentResponseModel.fromJson(json);
}

/// @nodoc
class _$AssessmentResponseModelTearOff {
  const _$AssessmentResponseModelTearOff();

  _AssessmentResponseModel call(
      {required String recognitionStatus,
      required int offset,
      required int duration,
      required List<AssessmentDetailModel> nBest}) {
    return _AssessmentResponseModel(
      recognitionStatus: recognitionStatus,
      offset: offset,
      duration: duration,
      nBest: nBest,
    );
  }

  AssessmentResponseModel fromJson(Map<String, Object> json) {
    return AssessmentResponseModel.fromJson(json);
  }
}

/// @nodoc
const $AssessmentResponseModel = _$AssessmentResponseModelTearOff();

/// @nodoc
mixin _$AssessmentResponseModel {
  String get recognitionStatus => throw _privateConstructorUsedError;
  int get offset => throw _privateConstructorUsedError;
  int get duration => throw _privateConstructorUsedError;
  List<AssessmentDetailModel> get nBest => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AssessmentResponseModelCopyWith<AssessmentResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AssessmentResponseModelCopyWith<$Res> {
  factory $AssessmentResponseModelCopyWith(AssessmentResponseModel value,
          $Res Function(AssessmentResponseModel) then) =
      _$AssessmentResponseModelCopyWithImpl<$Res>;
  $Res call(
      {String recognitionStatus,
      int offset,
      int duration,
      List<AssessmentDetailModel> nBest});
}

/// @nodoc
class _$AssessmentResponseModelCopyWithImpl<$Res>
    implements $AssessmentResponseModelCopyWith<$Res> {
  _$AssessmentResponseModelCopyWithImpl(this._value, this._then);

  final AssessmentResponseModel _value;
  // ignore: unused_field
  final $Res Function(AssessmentResponseModel) _then;

  @override
  $Res call({
    Object? recognitionStatus = freezed,
    Object? offset = freezed,
    Object? duration = freezed,
    Object? nBest = freezed,
  }) {
    return _then(_value.copyWith(
      recognitionStatus: recognitionStatus == freezed
          ? _value.recognitionStatus
          : recognitionStatus // ignore: cast_nullable_to_non_nullable
              as String,
      offset: offset == freezed
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int,
      duration: duration == freezed
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
      nBest: nBest == freezed
          ? _value.nBest
          : nBest // ignore: cast_nullable_to_non_nullable
              as List<AssessmentDetailModel>,
    ));
  }
}

/// @nodoc
abstract class _$AssessmentResponseModelCopyWith<$Res>
    implements $AssessmentResponseModelCopyWith<$Res> {
  factory _$AssessmentResponseModelCopyWith(_AssessmentResponseModel value,
          $Res Function(_AssessmentResponseModel) then) =
      __$AssessmentResponseModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String recognitionStatus,
      int offset,
      int duration,
      List<AssessmentDetailModel> nBest});
}

/// @nodoc
class __$AssessmentResponseModelCopyWithImpl<$Res>
    extends _$AssessmentResponseModelCopyWithImpl<$Res>
    implements _$AssessmentResponseModelCopyWith<$Res> {
  __$AssessmentResponseModelCopyWithImpl(_AssessmentResponseModel _value,
      $Res Function(_AssessmentResponseModel) _then)
      : super(_value, (v) => _then(v as _AssessmentResponseModel));

  @override
  _AssessmentResponseModel get _value =>
      super._value as _AssessmentResponseModel;

  @override
  $Res call({
    Object? recognitionStatus = freezed,
    Object? offset = freezed,
    Object? duration = freezed,
    Object? nBest = freezed,
  }) {
    return _then(_AssessmentResponseModel(
      recognitionStatus: recognitionStatus == freezed
          ? _value.recognitionStatus
          : recognitionStatus // ignore: cast_nullable_to_non_nullable
              as String,
      offset: offset == freezed
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int,
      duration: duration == freezed
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
      nBest: nBest == freezed
          ? _value.nBest
          : nBest // ignore: cast_nullable_to_non_nullable
              as List<AssessmentDetailModel>,
    ));
  }
}

@JsonSerializable(fieldRename: FieldRename.pascal)

/// @nodoc
class _$_AssessmentResponseModel implements _AssessmentResponseModel {
  _$_AssessmentResponseModel(
      {required this.recognitionStatus,
      required this.offset,
      required this.duration,
      required this.nBest});

  factory _$_AssessmentResponseModel.fromJson(Map<String, dynamic> json) =>
      _$_$_AssessmentResponseModelFromJson(json);

  @override
  final String recognitionStatus;
  @override
  final int offset;
  @override
  final int duration;
  @override
  final List<AssessmentDetailModel> nBest;

  @override
  String toString() {
    return 'AssessmentResponseModel(recognitionStatus: $recognitionStatus, offset: $offset, duration: $duration, nBest: $nBest)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AssessmentResponseModel &&
            (identical(other.recognitionStatus, recognitionStatus) ||
                const DeepCollectionEquality()
                    .equals(other.recognitionStatus, recognitionStatus)) &&
            (identical(other.offset, offset) ||
                const DeepCollectionEquality().equals(other.offset, offset)) &&
            (identical(other.duration, duration) ||
                const DeepCollectionEquality()
                    .equals(other.duration, duration)) &&
            (identical(other.nBest, nBest) ||
                const DeepCollectionEquality().equals(other.nBest, nBest)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(recognitionStatus) ^
      const DeepCollectionEquality().hash(offset) ^
      const DeepCollectionEquality().hash(duration) ^
      const DeepCollectionEquality().hash(nBest);

  @JsonKey(ignore: true)
  @override
  _$AssessmentResponseModelCopyWith<_AssessmentResponseModel> get copyWith =>
      __$AssessmentResponseModelCopyWithImpl<_AssessmentResponseModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_AssessmentResponseModelToJson(this);
  }
}

abstract class _AssessmentResponseModel implements AssessmentResponseModel {
  factory _AssessmentResponseModel(
      {required String recognitionStatus,
      required int offset,
      required int duration,
      required List<AssessmentDetailModel> nBest}) = _$_AssessmentResponseModel;

  factory _AssessmentResponseModel.fromJson(Map<String, dynamic> json) =
      _$_AssessmentResponseModel.fromJson;

  @override
  String get recognitionStatus => throw _privateConstructorUsedError;
  @override
  int get offset => throw _privateConstructorUsedError;
  @override
  int get duration => throw _privateConstructorUsedError;
  @override
  List<AssessmentDetailModel> get nBest => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AssessmentResponseModelCopyWith<_AssessmentResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

AssessmentDetailModel _$AssessmentDetailModelFromJson(
    Map<String, dynamic> json) {
  return _AssessmentDetailModel.fromJson(json);
}

/// @nodoc
class _$AssessmentDetailModelTearOff {
  const _$AssessmentDetailModelTearOff();

  _AssessmentDetailModel call(
      {required String lexical,
      required String iTN,
      required String maskedITN,
      required String display,
      required double accuracyScore,
      required double fluencyScore,
      required double completenessScore,
      required double pronScore,
      required List<dynamic> words}) {
    return _AssessmentDetailModel(
      lexical: lexical,
      iTN: iTN,
      maskedITN: maskedITN,
      display: display,
      accuracyScore: accuracyScore,
      fluencyScore: fluencyScore,
      completenessScore: completenessScore,
      pronScore: pronScore,
      words: words,
    );
  }

  AssessmentDetailModel fromJson(Map<String, Object> json) {
    return AssessmentDetailModel.fromJson(json);
  }
}

/// @nodoc
const $AssessmentDetailModel = _$AssessmentDetailModelTearOff();

/// @nodoc
mixin _$AssessmentDetailModel {
  String get lexical => throw _privateConstructorUsedError;
  String get iTN => throw _privateConstructorUsedError;
  String get maskedITN => throw _privateConstructorUsedError;
  String get display => throw _privateConstructorUsedError;
  double get accuracyScore => throw _privateConstructorUsedError;
  double get fluencyScore => throw _privateConstructorUsedError;
  double get completenessScore => throw _privateConstructorUsedError;
  double get pronScore => throw _privateConstructorUsedError;
  List<dynamic> get words => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AssessmentDetailModelCopyWith<AssessmentDetailModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AssessmentDetailModelCopyWith<$Res> {
  factory $AssessmentDetailModelCopyWith(AssessmentDetailModel value,
          $Res Function(AssessmentDetailModel) then) =
      _$AssessmentDetailModelCopyWithImpl<$Res>;
  $Res call(
      {String lexical,
      String iTN,
      String maskedITN,
      String display,
      double accuracyScore,
      double fluencyScore,
      double completenessScore,
      double pronScore,
      List<dynamic> words});
}

/// @nodoc
class _$AssessmentDetailModelCopyWithImpl<$Res>
    implements $AssessmentDetailModelCopyWith<$Res> {
  _$AssessmentDetailModelCopyWithImpl(this._value, this._then);

  final AssessmentDetailModel _value;
  // ignore: unused_field
  final $Res Function(AssessmentDetailModel) _then;

  @override
  $Res call({
    Object? lexical = freezed,
    Object? iTN = freezed,
    Object? maskedITN = freezed,
    Object? display = freezed,
    Object? accuracyScore = freezed,
    Object? fluencyScore = freezed,
    Object? completenessScore = freezed,
    Object? pronScore = freezed,
    Object? words = freezed,
  }) {
    return _then(_value.copyWith(
      lexical: lexical == freezed
          ? _value.lexical
          : lexical // ignore: cast_nullable_to_non_nullable
              as String,
      iTN: iTN == freezed
          ? _value.iTN
          : iTN // ignore: cast_nullable_to_non_nullable
              as String,
      maskedITN: maskedITN == freezed
          ? _value.maskedITN
          : maskedITN // ignore: cast_nullable_to_non_nullable
              as String,
      display: display == freezed
          ? _value.display
          : display // ignore: cast_nullable_to_non_nullable
              as String,
      accuracyScore: accuracyScore == freezed
          ? _value.accuracyScore
          : accuracyScore // ignore: cast_nullable_to_non_nullable
              as double,
      fluencyScore: fluencyScore == freezed
          ? _value.fluencyScore
          : fluencyScore // ignore: cast_nullable_to_non_nullable
              as double,
      completenessScore: completenessScore == freezed
          ? _value.completenessScore
          : completenessScore // ignore: cast_nullable_to_non_nullable
              as double,
      pronScore: pronScore == freezed
          ? _value.pronScore
          : pronScore // ignore: cast_nullable_to_non_nullable
              as double,
      words: words == freezed
          ? _value.words
          : words // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ));
  }
}

/// @nodoc
abstract class _$AssessmentDetailModelCopyWith<$Res>
    implements $AssessmentDetailModelCopyWith<$Res> {
  factory _$AssessmentDetailModelCopyWith(_AssessmentDetailModel value,
          $Res Function(_AssessmentDetailModel) then) =
      __$AssessmentDetailModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String lexical,
      String iTN,
      String maskedITN,
      String display,
      double accuracyScore,
      double fluencyScore,
      double completenessScore,
      double pronScore,
      List<dynamic> words});
}

/// @nodoc
class __$AssessmentDetailModelCopyWithImpl<$Res>
    extends _$AssessmentDetailModelCopyWithImpl<$Res>
    implements _$AssessmentDetailModelCopyWith<$Res> {
  __$AssessmentDetailModelCopyWithImpl(_AssessmentDetailModel _value,
      $Res Function(_AssessmentDetailModel) _then)
      : super(_value, (v) => _then(v as _AssessmentDetailModel));

  @override
  _AssessmentDetailModel get _value => super._value as _AssessmentDetailModel;

  @override
  $Res call({
    Object? lexical = freezed,
    Object? iTN = freezed,
    Object? maskedITN = freezed,
    Object? display = freezed,
    Object? accuracyScore = freezed,
    Object? fluencyScore = freezed,
    Object? completenessScore = freezed,
    Object? pronScore = freezed,
    Object? words = freezed,
  }) {
    return _then(_AssessmentDetailModel(
      lexical: lexical == freezed
          ? _value.lexical
          : lexical // ignore: cast_nullable_to_non_nullable
              as String,
      iTN: iTN == freezed
          ? _value.iTN
          : iTN // ignore: cast_nullable_to_non_nullable
              as String,
      maskedITN: maskedITN == freezed
          ? _value.maskedITN
          : maskedITN // ignore: cast_nullable_to_non_nullable
              as String,
      display: display == freezed
          ? _value.display
          : display // ignore: cast_nullable_to_non_nullable
              as String,
      accuracyScore: accuracyScore == freezed
          ? _value.accuracyScore
          : accuracyScore // ignore: cast_nullable_to_non_nullable
              as double,
      fluencyScore: fluencyScore == freezed
          ? _value.fluencyScore
          : fluencyScore // ignore: cast_nullable_to_non_nullable
              as double,
      completenessScore: completenessScore == freezed
          ? _value.completenessScore
          : completenessScore // ignore: cast_nullable_to_non_nullable
              as double,
      pronScore: pronScore == freezed
          ? _value.pronScore
          : pronScore // ignore: cast_nullable_to_non_nullable
              as double,
      words: words == freezed
          ? _value.words
          : words // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ));
  }
}

@JsonSerializable(fieldRename: FieldRename.pascal)

/// @nodoc
class _$_AssessmentDetailModel implements _AssessmentDetailModel {
  _$_AssessmentDetailModel(
      {required this.lexical,
      required this.iTN,
      required this.maskedITN,
      required this.display,
      required this.accuracyScore,
      required this.fluencyScore,
      required this.completenessScore,
      required this.pronScore,
      required this.words});

  factory _$_AssessmentDetailModel.fromJson(Map<String, dynamic> json) =>
      _$_$_AssessmentDetailModelFromJson(json);

  @override
  final String lexical;
  @override
  final String iTN;
  @override
  final String maskedITN;
  @override
  final String display;
  @override
  final double accuracyScore;
  @override
  final double fluencyScore;
  @override
  final double completenessScore;
  @override
  final double pronScore;
  @override
  final List<dynamic> words;

  @override
  String toString() {
    return 'AssessmentDetailModel(lexical: $lexical, iTN: $iTN, maskedITN: $maskedITN, display: $display, accuracyScore: $accuracyScore, fluencyScore: $fluencyScore, completenessScore: $completenessScore, pronScore: $pronScore, words: $words)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AssessmentDetailModel &&
            (identical(other.lexical, lexical) ||
                const DeepCollectionEquality()
                    .equals(other.lexical, lexical)) &&
            (identical(other.iTN, iTN) ||
                const DeepCollectionEquality().equals(other.iTN, iTN)) &&
            (identical(other.maskedITN, maskedITN) ||
                const DeepCollectionEquality()
                    .equals(other.maskedITN, maskedITN)) &&
            (identical(other.display, display) ||
                const DeepCollectionEquality()
                    .equals(other.display, display)) &&
            (identical(other.accuracyScore, accuracyScore) ||
                const DeepCollectionEquality()
                    .equals(other.accuracyScore, accuracyScore)) &&
            (identical(other.fluencyScore, fluencyScore) ||
                const DeepCollectionEquality()
                    .equals(other.fluencyScore, fluencyScore)) &&
            (identical(other.completenessScore, completenessScore) ||
                const DeepCollectionEquality()
                    .equals(other.completenessScore, completenessScore)) &&
            (identical(other.pronScore, pronScore) ||
                const DeepCollectionEquality()
                    .equals(other.pronScore, pronScore)) &&
            (identical(other.words, words) ||
                const DeepCollectionEquality().equals(other.words, words)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(lexical) ^
      const DeepCollectionEquality().hash(iTN) ^
      const DeepCollectionEquality().hash(maskedITN) ^
      const DeepCollectionEquality().hash(display) ^
      const DeepCollectionEquality().hash(accuracyScore) ^
      const DeepCollectionEquality().hash(fluencyScore) ^
      const DeepCollectionEquality().hash(completenessScore) ^
      const DeepCollectionEquality().hash(pronScore) ^
      const DeepCollectionEquality().hash(words);

  @JsonKey(ignore: true)
  @override
  _$AssessmentDetailModelCopyWith<_AssessmentDetailModel> get copyWith =>
      __$AssessmentDetailModelCopyWithImpl<_AssessmentDetailModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_AssessmentDetailModelToJson(this);
  }
}

abstract class _AssessmentDetailModel implements AssessmentDetailModel {
  factory _AssessmentDetailModel(
      {required String lexical,
      required String iTN,
      required String maskedITN,
      required String display,
      required double accuracyScore,
      required double fluencyScore,
      required double completenessScore,
      required double pronScore,
      required List<dynamic> words}) = _$_AssessmentDetailModel;

  factory _AssessmentDetailModel.fromJson(Map<String, dynamic> json) =
      _$_AssessmentDetailModel.fromJson;

  @override
  String get lexical => throw _privateConstructorUsedError;
  @override
  String get iTN => throw _privateConstructorUsedError;
  @override
  String get maskedITN => throw _privateConstructorUsedError;
  @override
  String get display => throw _privateConstructorUsedError;
  @override
  double get accuracyScore => throw _privateConstructorUsedError;
  @override
  double get fluencyScore => throw _privateConstructorUsedError;
  @override
  double get completenessScore => throw _privateConstructorUsedError;
  @override
  double get pronScore => throw _privateConstructorUsedError;
  @override
  List<dynamic> get words => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AssessmentDetailModelCopyWith<_AssessmentDetailModel> get copyWith =>
      throw _privateConstructorUsedError;
}

AssessmentWordModel _$AssessmentWordModelFromJson(Map<String, dynamic> json) {
  return _AssessmentWordModel.fromJson(json);
}

/// @nodoc
class _$AssessmentWordModelTearOff {
  const _$AssessmentWordModelTearOff();

  _AssessmentWordModel call(
      {required String word,
      required double accuracyScore,
      required String errorType,
      required int offset,
      required int duration,
      required List<dynamic> phonemes}) {
    return _AssessmentWordModel(
      word: word,
      accuracyScore: accuracyScore,
      errorType: errorType,
      offset: offset,
      duration: duration,
      phonemes: phonemes,
    );
  }

  AssessmentWordModel fromJson(Map<String, Object> json) {
    return AssessmentWordModel.fromJson(json);
  }
}

/// @nodoc
const $AssessmentWordModel = _$AssessmentWordModelTearOff();

/// @nodoc
mixin _$AssessmentWordModel {
  String get word => throw _privateConstructorUsedError;
  double get accuracyScore => throw _privateConstructorUsedError;
  String get errorType => throw _privateConstructorUsedError;
  int get offset => throw _privateConstructorUsedError;
  int get duration => throw _privateConstructorUsedError;
  List<dynamic> get phonemes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AssessmentWordModelCopyWith<AssessmentWordModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AssessmentWordModelCopyWith<$Res> {
  factory $AssessmentWordModelCopyWith(
          AssessmentWordModel value, $Res Function(AssessmentWordModel) then) =
      _$AssessmentWordModelCopyWithImpl<$Res>;
  $Res call(
      {String word,
      double accuracyScore,
      String errorType,
      int offset,
      int duration,
      List<dynamic> phonemes});
}

/// @nodoc
class _$AssessmentWordModelCopyWithImpl<$Res>
    implements $AssessmentWordModelCopyWith<$Res> {
  _$AssessmentWordModelCopyWithImpl(this._value, this._then);

  final AssessmentWordModel _value;
  // ignore: unused_field
  final $Res Function(AssessmentWordModel) _then;

  @override
  $Res call({
    Object? word = freezed,
    Object? accuracyScore = freezed,
    Object? errorType = freezed,
    Object? offset = freezed,
    Object? duration = freezed,
    Object? phonemes = freezed,
  }) {
    return _then(_value.copyWith(
      word: word == freezed
          ? _value.word
          : word // ignore: cast_nullable_to_non_nullable
              as String,
      accuracyScore: accuracyScore == freezed
          ? _value.accuracyScore
          : accuracyScore // ignore: cast_nullable_to_non_nullable
              as double,
      errorType: errorType == freezed
          ? _value.errorType
          : errorType // ignore: cast_nullable_to_non_nullable
              as String,
      offset: offset == freezed
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int,
      duration: duration == freezed
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
      phonemes: phonemes == freezed
          ? _value.phonemes
          : phonemes // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ));
  }
}

/// @nodoc
abstract class _$AssessmentWordModelCopyWith<$Res>
    implements $AssessmentWordModelCopyWith<$Res> {
  factory _$AssessmentWordModelCopyWith(_AssessmentWordModel value,
          $Res Function(_AssessmentWordModel) then) =
      __$AssessmentWordModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String word,
      double accuracyScore,
      String errorType,
      int offset,
      int duration,
      List<dynamic> phonemes});
}

/// @nodoc
class __$AssessmentWordModelCopyWithImpl<$Res>
    extends _$AssessmentWordModelCopyWithImpl<$Res>
    implements _$AssessmentWordModelCopyWith<$Res> {
  __$AssessmentWordModelCopyWithImpl(
      _AssessmentWordModel _value, $Res Function(_AssessmentWordModel) _then)
      : super(_value, (v) => _then(v as _AssessmentWordModel));

  @override
  _AssessmentWordModel get _value => super._value as _AssessmentWordModel;

  @override
  $Res call({
    Object? word = freezed,
    Object? accuracyScore = freezed,
    Object? errorType = freezed,
    Object? offset = freezed,
    Object? duration = freezed,
    Object? phonemes = freezed,
  }) {
    return _then(_AssessmentWordModel(
      word: word == freezed
          ? _value.word
          : word // ignore: cast_nullable_to_non_nullable
              as String,
      accuracyScore: accuracyScore == freezed
          ? _value.accuracyScore
          : accuracyScore // ignore: cast_nullable_to_non_nullable
              as double,
      errorType: errorType == freezed
          ? _value.errorType
          : errorType // ignore: cast_nullable_to_non_nullable
              as String,
      offset: offset == freezed
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int,
      duration: duration == freezed
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
      phonemes: phonemes == freezed
          ? _value.phonemes
          : phonemes // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ));
  }
}

@JsonSerializable(fieldRename: FieldRename.pascal)

/// @nodoc
class _$_AssessmentWordModel implements _AssessmentWordModel {
  _$_AssessmentWordModel(
      {required this.word,
      required this.accuracyScore,
      required this.errorType,
      required this.offset,
      required this.duration,
      required this.phonemes});

  factory _$_AssessmentWordModel.fromJson(Map<String, dynamic> json) =>
      _$_$_AssessmentWordModelFromJson(json);

  @override
  final String word;
  @override
  final double accuracyScore;
  @override
  final String errorType;
  @override
  final int offset;
  @override
  final int duration;
  @override
  final List<dynamic> phonemes;

  @override
  String toString() {
    return 'AssessmentWordModel(word: $word, accuracyScore: $accuracyScore, errorType: $errorType, offset: $offset, duration: $duration, phonemes: $phonemes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AssessmentWordModel &&
            (identical(other.word, word) ||
                const DeepCollectionEquality().equals(other.word, word)) &&
            (identical(other.accuracyScore, accuracyScore) ||
                const DeepCollectionEquality()
                    .equals(other.accuracyScore, accuracyScore)) &&
            (identical(other.errorType, errorType) ||
                const DeepCollectionEquality()
                    .equals(other.errorType, errorType)) &&
            (identical(other.offset, offset) ||
                const DeepCollectionEquality().equals(other.offset, offset)) &&
            (identical(other.duration, duration) ||
                const DeepCollectionEquality()
                    .equals(other.duration, duration)) &&
            (identical(other.phonemes, phonemes) ||
                const DeepCollectionEquality()
                    .equals(other.phonemes, phonemes)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(word) ^
      const DeepCollectionEquality().hash(accuracyScore) ^
      const DeepCollectionEquality().hash(errorType) ^
      const DeepCollectionEquality().hash(offset) ^
      const DeepCollectionEquality().hash(duration) ^
      const DeepCollectionEquality().hash(phonemes);

  @JsonKey(ignore: true)
  @override
  _$AssessmentWordModelCopyWith<_AssessmentWordModel> get copyWith =>
      __$AssessmentWordModelCopyWithImpl<_AssessmentWordModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_AssessmentWordModelToJson(this);
  }
}

abstract class _AssessmentWordModel implements AssessmentWordModel {
  factory _AssessmentWordModel(
      {required String word,
      required double accuracyScore,
      required String errorType,
      required int offset,
      required int duration,
      required List<dynamic> phonemes}) = _$_AssessmentWordModel;

  factory _AssessmentWordModel.fromJson(Map<String, dynamic> json) =
      _$_AssessmentWordModel.fromJson;

  @override
  String get word => throw _privateConstructorUsedError;
  @override
  double get accuracyScore => throw _privateConstructorUsedError;
  @override
  String get errorType => throw _privateConstructorUsedError;
  @override
  int get offset => throw _privateConstructorUsedError;
  @override
  int get duration => throw _privateConstructorUsedError;
  @override
  List<dynamic> get phonemes => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AssessmentWordModelCopyWith<_AssessmentWordModel> get copyWith =>
      throw _privateConstructorUsedError;
}

AssessmentPhonemeModel _$AssessmentPhonemeModelFromJson(
    Map<String, dynamic> json) {
  return _AssessmentPhonemeModel.fromJson(json);
}

/// @nodoc
class _$AssessmentPhonemeModelTearOff {
  const _$AssessmentPhonemeModelTearOff();

  _AssessmentPhonemeModel call(
      {required String phoneme,
      required double accuracyScore,
      required String errorType,
      required int offset,
      required int duration}) {
    return _AssessmentPhonemeModel(
      phoneme: phoneme,
      accuracyScore: accuracyScore,
      errorType: errorType,
      offset: offset,
      duration: duration,
    );
  }

  AssessmentPhonemeModel fromJson(Map<String, Object> json) {
    return AssessmentPhonemeModel.fromJson(json);
  }
}

/// @nodoc
const $AssessmentPhonemeModel = _$AssessmentPhonemeModelTearOff();

/// @nodoc
mixin _$AssessmentPhonemeModel {
  String get phoneme => throw _privateConstructorUsedError;
  double get accuracyScore => throw _privateConstructorUsedError;
  String get errorType => throw _privateConstructorUsedError;
  int get offset => throw _privateConstructorUsedError;
  int get duration => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AssessmentPhonemeModelCopyWith<AssessmentPhonemeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AssessmentPhonemeModelCopyWith<$Res> {
  factory $AssessmentPhonemeModelCopyWith(AssessmentPhonemeModel value,
          $Res Function(AssessmentPhonemeModel) then) =
      _$AssessmentPhonemeModelCopyWithImpl<$Res>;
  $Res call(
      {String phoneme,
      double accuracyScore,
      String errorType,
      int offset,
      int duration});
}

/// @nodoc
class _$AssessmentPhonemeModelCopyWithImpl<$Res>
    implements $AssessmentPhonemeModelCopyWith<$Res> {
  _$AssessmentPhonemeModelCopyWithImpl(this._value, this._then);

  final AssessmentPhonemeModel _value;
  // ignore: unused_field
  final $Res Function(AssessmentPhonemeModel) _then;

  @override
  $Res call({
    Object? phoneme = freezed,
    Object? accuracyScore = freezed,
    Object? errorType = freezed,
    Object? offset = freezed,
    Object? duration = freezed,
  }) {
    return _then(_value.copyWith(
      phoneme: phoneme == freezed
          ? _value.phoneme
          : phoneme // ignore: cast_nullable_to_non_nullable
              as String,
      accuracyScore: accuracyScore == freezed
          ? _value.accuracyScore
          : accuracyScore // ignore: cast_nullable_to_non_nullable
              as double,
      errorType: errorType == freezed
          ? _value.errorType
          : errorType // ignore: cast_nullable_to_non_nullable
              as String,
      offset: offset == freezed
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int,
      duration: duration == freezed
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$AssessmentPhonemeModelCopyWith<$Res>
    implements $AssessmentPhonemeModelCopyWith<$Res> {
  factory _$AssessmentPhonemeModelCopyWith(_AssessmentPhonemeModel value,
          $Res Function(_AssessmentPhonemeModel) then) =
      __$AssessmentPhonemeModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String phoneme,
      double accuracyScore,
      String errorType,
      int offset,
      int duration});
}

/// @nodoc
class __$AssessmentPhonemeModelCopyWithImpl<$Res>
    extends _$AssessmentPhonemeModelCopyWithImpl<$Res>
    implements _$AssessmentPhonemeModelCopyWith<$Res> {
  __$AssessmentPhonemeModelCopyWithImpl(_AssessmentPhonemeModel _value,
      $Res Function(_AssessmentPhonemeModel) _then)
      : super(_value, (v) => _then(v as _AssessmentPhonemeModel));

  @override
  _AssessmentPhonemeModel get _value => super._value as _AssessmentPhonemeModel;

  @override
  $Res call({
    Object? phoneme = freezed,
    Object? accuracyScore = freezed,
    Object? errorType = freezed,
    Object? offset = freezed,
    Object? duration = freezed,
  }) {
    return _then(_AssessmentPhonemeModel(
      phoneme: phoneme == freezed
          ? _value.phoneme
          : phoneme // ignore: cast_nullable_to_non_nullable
              as String,
      accuracyScore: accuracyScore == freezed
          ? _value.accuracyScore
          : accuracyScore // ignore: cast_nullable_to_non_nullable
              as double,
      errorType: errorType == freezed
          ? _value.errorType
          : errorType // ignore: cast_nullable_to_non_nullable
              as String,
      offset: offset == freezed
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int,
      duration: duration == freezed
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

@JsonSerializable(fieldRename: FieldRename.pascal)

/// @nodoc
class _$_AssessmentPhonemeModel implements _AssessmentPhonemeModel {
  _$_AssessmentPhonemeModel(
      {required this.phoneme,
      required this.accuracyScore,
      required this.errorType,
      required this.offset,
      required this.duration});

  factory _$_AssessmentPhonemeModel.fromJson(Map<String, dynamic> json) =>
      _$_$_AssessmentPhonemeModelFromJson(json);

  @override
  final String phoneme;
  @override
  final double accuracyScore;
  @override
  final String errorType;
  @override
  final int offset;
  @override
  final int duration;

  @override
  String toString() {
    return 'AssessmentPhonemeModel(phoneme: $phoneme, accuracyScore: $accuracyScore, errorType: $errorType, offset: $offset, duration: $duration)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AssessmentPhonemeModel &&
            (identical(other.phoneme, phoneme) ||
                const DeepCollectionEquality()
                    .equals(other.phoneme, phoneme)) &&
            (identical(other.accuracyScore, accuracyScore) ||
                const DeepCollectionEquality()
                    .equals(other.accuracyScore, accuracyScore)) &&
            (identical(other.errorType, errorType) ||
                const DeepCollectionEquality()
                    .equals(other.errorType, errorType)) &&
            (identical(other.offset, offset) ||
                const DeepCollectionEquality().equals(other.offset, offset)) &&
            (identical(other.duration, duration) ||
                const DeepCollectionEquality()
                    .equals(other.duration, duration)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(phoneme) ^
      const DeepCollectionEquality().hash(accuracyScore) ^
      const DeepCollectionEquality().hash(errorType) ^
      const DeepCollectionEquality().hash(offset) ^
      const DeepCollectionEquality().hash(duration);

  @JsonKey(ignore: true)
  @override
  _$AssessmentPhonemeModelCopyWith<_AssessmentPhonemeModel> get copyWith =>
      __$AssessmentPhonemeModelCopyWithImpl<_AssessmentPhonemeModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_AssessmentPhonemeModelToJson(this);
  }
}

abstract class _AssessmentPhonemeModel implements AssessmentPhonemeModel {
  factory _AssessmentPhonemeModel(
      {required String phoneme,
      required double accuracyScore,
      required String errorType,
      required int offset,
      required int duration}) = _$_AssessmentPhonemeModel;

  factory _AssessmentPhonemeModel.fromJson(Map<String, dynamic> json) =
      _$_AssessmentPhonemeModel.fromJson;

  @override
  String get phoneme => throw _privateConstructorUsedError;
  @override
  double get accuracyScore => throw _privateConstructorUsedError;
  @override
  String get errorType => throw _privateConstructorUsedError;
  @override
  int get offset => throw _privateConstructorUsedError;
  @override
  int get duration => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AssessmentPhonemeModelCopyWith<_AssessmentPhonemeModel> get copyWith =>
      throw _privateConstructorUsedError;
}
