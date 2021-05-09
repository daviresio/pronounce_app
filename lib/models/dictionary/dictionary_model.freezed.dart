// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'dictionary_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DictionaryModel _$DictionaryModelFromJson(Map<String, dynamic> json) {
  return _DictionaryModel.fromJson(json);
}

/// @nodoc
class _$DictionaryModelTearOff {
  const _$DictionaryModelTearOff();

  _DictionaryModel call({required List<Map<String, dynamic>> entries}) {
    return _DictionaryModel(
      entries: entries,
    );
  }

  DictionaryModel fromJson(Map<String, Object> json) {
    return DictionaryModel.fromJson(json);
  }
}

/// @nodoc
const $DictionaryModel = _$DictionaryModelTearOff();

/// @nodoc
mixin _$DictionaryModel {
  List<Map<String, dynamic>> get entries => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DictionaryModelCopyWith<DictionaryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DictionaryModelCopyWith<$Res> {
  factory $DictionaryModelCopyWith(
          DictionaryModel value, $Res Function(DictionaryModel) then) =
      _$DictionaryModelCopyWithImpl<$Res>;
  $Res call({List<Map<String, dynamic>> entries});
}

/// @nodoc
class _$DictionaryModelCopyWithImpl<$Res>
    implements $DictionaryModelCopyWith<$Res> {
  _$DictionaryModelCopyWithImpl(this._value, this._then);

  final DictionaryModel _value;
  // ignore: unused_field
  final $Res Function(DictionaryModel) _then;

  @override
  $Res call({
    Object? entries = freezed,
  }) {
    return _then(_value.copyWith(
      entries: entries == freezed
          ? _value.entries
          : entries // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
    ));
  }
}

/// @nodoc
abstract class _$DictionaryModelCopyWith<$Res>
    implements $DictionaryModelCopyWith<$Res> {
  factory _$DictionaryModelCopyWith(
          _DictionaryModel value, $Res Function(_DictionaryModel) then) =
      __$DictionaryModelCopyWithImpl<$Res>;
  @override
  $Res call({List<Map<String, dynamic>> entries});
}

/// @nodoc
class __$DictionaryModelCopyWithImpl<$Res>
    extends _$DictionaryModelCopyWithImpl<$Res>
    implements _$DictionaryModelCopyWith<$Res> {
  __$DictionaryModelCopyWithImpl(
      _DictionaryModel _value, $Res Function(_DictionaryModel) _then)
      : super(_value, (v) => _then(v as _DictionaryModel));

  @override
  _DictionaryModel get _value => super._value as _DictionaryModel;

  @override
  $Res call({
    Object? entries = freezed,
  }) {
    return _then(_DictionaryModel(
      entries: entries == freezed
          ? _value.entries
          : entries // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
    ));
  }
}

@JsonSerializable(fieldRename: FieldRename.none)

/// @nodoc
class _$_DictionaryModel implements _DictionaryModel {
  _$_DictionaryModel({required this.entries});

  factory _$_DictionaryModel.fromJson(Map<String, dynamic> json) =>
      _$_$_DictionaryModelFromJson(json);

  @override
  final List<Map<String, dynamic>> entries;

  @override
  String toString() {
    return 'DictionaryModel(entries: $entries)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DictionaryModel &&
            (identical(other.entries, entries) ||
                const DeepCollectionEquality().equals(other.entries, entries)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(entries);

  @JsonKey(ignore: true)
  @override
  _$DictionaryModelCopyWith<_DictionaryModel> get copyWith =>
      __$DictionaryModelCopyWithImpl<_DictionaryModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_DictionaryModelToJson(this);
  }
}

abstract class _DictionaryModel implements DictionaryModel {
  factory _DictionaryModel({required List<Map<String, dynamic>> entries}) =
      _$_DictionaryModel;

  factory _DictionaryModel.fromJson(Map<String, dynamic> json) =
      _$_DictionaryModel.fromJson;

  @override
  List<Map<String, dynamic>> get entries => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$DictionaryModelCopyWith<_DictionaryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

DictionaryEntryModel _$DictionaryEntryModelFromJson(Map<String, dynamic> json) {
  return _DictionaryEntryModel.fromJson(json);
}

/// @nodoc
class _$DictionaryEntryModelTearOff {
  const _$DictionaryEntryModelTearOff();

  _DictionaryEntryModel call(
      {required String entry,
      required List<DictionaryPronunciationModel> pronunciations,
      required List<String> hyphenations,
      required Map<String, dynamic> interpretations,
      required List<DictionaryLexemeModel> lexemes,
      required List<String> license,
      required List<String> sourceUrls}) {
    return _DictionaryEntryModel(
      entry: entry,
      pronunciations: pronunciations,
      hyphenations: hyphenations,
      interpretations: interpretations,
      lexemes: lexemes,
      license: license,
      sourceUrls: sourceUrls,
    );
  }

  DictionaryEntryModel fromJson(Map<String, Object> json) {
    return DictionaryEntryModel.fromJson(json);
  }
}

/// @nodoc
const $DictionaryEntryModel = _$DictionaryEntryModelTearOff();

/// @nodoc
mixin _$DictionaryEntryModel {
  String get entry => throw _privateConstructorUsedError;
  List<DictionaryPronunciationModel> get pronunciations =>
      throw _privateConstructorUsedError;
  List<String> get hyphenations => throw _privateConstructorUsedError;
  Map<String, dynamic> get interpretations =>
      throw _privateConstructorUsedError;
  List<DictionaryLexemeModel> get lexemes => throw _privateConstructorUsedError;
  List<String> get license => throw _privateConstructorUsedError;
  List<String> get sourceUrls => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DictionaryEntryModelCopyWith<DictionaryEntryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DictionaryEntryModelCopyWith<$Res> {
  factory $DictionaryEntryModelCopyWith(DictionaryEntryModel value,
          $Res Function(DictionaryEntryModel) then) =
      _$DictionaryEntryModelCopyWithImpl<$Res>;
  $Res call(
      {String entry,
      List<DictionaryPronunciationModel> pronunciations,
      List<String> hyphenations,
      Map<String, dynamic> interpretations,
      List<DictionaryLexemeModel> lexemes,
      List<String> license,
      List<String> sourceUrls});
}

/// @nodoc
class _$DictionaryEntryModelCopyWithImpl<$Res>
    implements $DictionaryEntryModelCopyWith<$Res> {
  _$DictionaryEntryModelCopyWithImpl(this._value, this._then);

  final DictionaryEntryModel _value;
  // ignore: unused_field
  final $Res Function(DictionaryEntryModel) _then;

  @override
  $Res call({
    Object? entry = freezed,
    Object? pronunciations = freezed,
    Object? hyphenations = freezed,
    Object? interpretations = freezed,
    Object? lexemes = freezed,
    Object? license = freezed,
    Object? sourceUrls = freezed,
  }) {
    return _then(_value.copyWith(
      entry: entry == freezed
          ? _value.entry
          : entry // ignore: cast_nullable_to_non_nullable
              as String,
      pronunciations: pronunciations == freezed
          ? _value.pronunciations
          : pronunciations // ignore: cast_nullable_to_non_nullable
              as List<DictionaryPronunciationModel>,
      hyphenations: hyphenations == freezed
          ? _value.hyphenations
          : hyphenations // ignore: cast_nullable_to_non_nullable
              as List<String>,
      interpretations: interpretations == freezed
          ? _value.interpretations
          : interpretations // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      lexemes: lexemes == freezed
          ? _value.lexemes
          : lexemes // ignore: cast_nullable_to_non_nullable
              as List<DictionaryLexemeModel>,
      license: license == freezed
          ? _value.license
          : license // ignore: cast_nullable_to_non_nullable
              as List<String>,
      sourceUrls: sourceUrls == freezed
          ? _value.sourceUrls
          : sourceUrls // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
abstract class _$DictionaryEntryModelCopyWith<$Res>
    implements $DictionaryEntryModelCopyWith<$Res> {
  factory _$DictionaryEntryModelCopyWith(_DictionaryEntryModel value,
          $Res Function(_DictionaryEntryModel) then) =
      __$DictionaryEntryModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String entry,
      List<DictionaryPronunciationModel> pronunciations,
      List<String> hyphenations,
      Map<String, dynamic> interpretations,
      List<DictionaryLexemeModel> lexemes,
      List<String> license,
      List<String> sourceUrls});
}

/// @nodoc
class __$DictionaryEntryModelCopyWithImpl<$Res>
    extends _$DictionaryEntryModelCopyWithImpl<$Res>
    implements _$DictionaryEntryModelCopyWith<$Res> {
  __$DictionaryEntryModelCopyWithImpl(
      _DictionaryEntryModel _value, $Res Function(_DictionaryEntryModel) _then)
      : super(_value, (v) => _then(v as _DictionaryEntryModel));

  @override
  _DictionaryEntryModel get _value => super._value as _DictionaryEntryModel;

  @override
  $Res call({
    Object? entry = freezed,
    Object? pronunciations = freezed,
    Object? hyphenations = freezed,
    Object? interpretations = freezed,
    Object? lexemes = freezed,
    Object? license = freezed,
    Object? sourceUrls = freezed,
  }) {
    return _then(_DictionaryEntryModel(
      entry: entry == freezed
          ? _value.entry
          : entry // ignore: cast_nullable_to_non_nullable
              as String,
      pronunciations: pronunciations == freezed
          ? _value.pronunciations
          : pronunciations // ignore: cast_nullable_to_non_nullable
              as List<DictionaryPronunciationModel>,
      hyphenations: hyphenations == freezed
          ? _value.hyphenations
          : hyphenations // ignore: cast_nullable_to_non_nullable
              as List<String>,
      interpretations: interpretations == freezed
          ? _value.interpretations
          : interpretations // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      lexemes: lexemes == freezed
          ? _value.lexemes
          : lexemes // ignore: cast_nullable_to_non_nullable
              as List<DictionaryLexemeModel>,
      license: license == freezed
          ? _value.license
          : license // ignore: cast_nullable_to_non_nullable
              as List<String>,
      sourceUrls: sourceUrls == freezed
          ? _value.sourceUrls
          : sourceUrls // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

@JsonSerializable(fieldRename: FieldRename.none)

/// @nodoc
class _$_DictionaryEntryModel implements _DictionaryEntryModel {
  _$_DictionaryEntryModel(
      {required this.entry,
      required this.pronunciations,
      required this.hyphenations,
      required this.interpretations,
      required this.lexemes,
      required this.license,
      required this.sourceUrls});

  factory _$_DictionaryEntryModel.fromJson(Map<String, dynamic> json) =>
      _$_$_DictionaryEntryModelFromJson(json);

  @override
  final String entry;
  @override
  final List<DictionaryPronunciationModel> pronunciations;
  @override
  final List<String> hyphenations;
  @override
  final Map<String, dynamic> interpretations;
  @override
  final List<DictionaryLexemeModel> lexemes;
  @override
  final List<String> license;
  @override
  final List<String> sourceUrls;

  @override
  String toString() {
    return 'DictionaryEntryModel(entry: $entry, pronunciations: $pronunciations, hyphenations: $hyphenations, interpretations: $interpretations, lexemes: $lexemes, license: $license, sourceUrls: $sourceUrls)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DictionaryEntryModel &&
            (identical(other.entry, entry) ||
                const DeepCollectionEquality().equals(other.entry, entry)) &&
            (identical(other.pronunciations, pronunciations) ||
                const DeepCollectionEquality()
                    .equals(other.pronunciations, pronunciations)) &&
            (identical(other.hyphenations, hyphenations) ||
                const DeepCollectionEquality()
                    .equals(other.hyphenations, hyphenations)) &&
            (identical(other.interpretations, interpretations) ||
                const DeepCollectionEquality()
                    .equals(other.interpretations, interpretations)) &&
            (identical(other.lexemes, lexemes) ||
                const DeepCollectionEquality()
                    .equals(other.lexemes, lexemes)) &&
            (identical(other.license, license) ||
                const DeepCollectionEquality()
                    .equals(other.license, license)) &&
            (identical(other.sourceUrls, sourceUrls) ||
                const DeepCollectionEquality()
                    .equals(other.sourceUrls, sourceUrls)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(entry) ^
      const DeepCollectionEquality().hash(pronunciations) ^
      const DeepCollectionEquality().hash(hyphenations) ^
      const DeepCollectionEquality().hash(interpretations) ^
      const DeepCollectionEquality().hash(lexemes) ^
      const DeepCollectionEquality().hash(license) ^
      const DeepCollectionEquality().hash(sourceUrls);

  @JsonKey(ignore: true)
  @override
  _$DictionaryEntryModelCopyWith<_DictionaryEntryModel> get copyWith =>
      __$DictionaryEntryModelCopyWithImpl<_DictionaryEntryModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_DictionaryEntryModelToJson(this);
  }
}

abstract class _DictionaryEntryModel implements DictionaryEntryModel {
  factory _DictionaryEntryModel(
      {required String entry,
      required List<DictionaryPronunciationModel> pronunciations,
      required List<String> hyphenations,
      required Map<String, dynamic> interpretations,
      required List<DictionaryLexemeModel> lexemes,
      required List<String> license,
      required List<String> sourceUrls}) = _$_DictionaryEntryModel;

  factory _DictionaryEntryModel.fromJson(Map<String, dynamic> json) =
      _$_DictionaryEntryModel.fromJson;

  @override
  String get entry => throw _privateConstructorUsedError;
  @override
  List<DictionaryPronunciationModel> get pronunciations =>
      throw _privateConstructorUsedError;
  @override
  List<String> get hyphenations => throw _privateConstructorUsedError;
  @override
  Map<String, dynamic> get interpretations =>
      throw _privateConstructorUsedError;
  @override
  List<DictionaryLexemeModel> get lexemes => throw _privateConstructorUsedError;
  @override
  List<String> get license => throw _privateConstructorUsedError;
  @override
  List<String> get sourceUrls => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$DictionaryEntryModelCopyWith<_DictionaryEntryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

DictionaryPronunciationModel _$DictionaryPronunciationModelFromJson(
    Map<String, dynamic> json) {
  return _DictionaryPronunciationModel.fromJson(json);
}

/// @nodoc
class _$DictionaryPronunciationModelTearOff {
  const _$DictionaryPronunciationModelTearOff();

  _DictionaryPronunciationModel call(
      {required List<Map<String, dynamic>> transcriptions,
      required List<Map<String, dynamic>> audio,
      required List<Map<String, dynamic>> context}) {
    return _DictionaryPronunciationModel(
      transcriptions: transcriptions,
      audio: audio,
      context: context,
    );
  }

  DictionaryPronunciationModel fromJson(Map<String, Object> json) {
    return DictionaryPronunciationModel.fromJson(json);
  }
}

/// @nodoc
const $DictionaryPronunciationModel = _$DictionaryPronunciationModelTearOff();

/// @nodoc
mixin _$DictionaryPronunciationModel {
  List<Map<String, dynamic>> get transcriptions =>
      throw _privateConstructorUsedError;
  List<Map<String, dynamic>> get audio => throw _privateConstructorUsedError;
  List<Map<String, dynamic>> get context => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DictionaryPronunciationModelCopyWith<DictionaryPronunciationModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DictionaryPronunciationModelCopyWith<$Res> {
  factory $DictionaryPronunciationModelCopyWith(
          DictionaryPronunciationModel value,
          $Res Function(DictionaryPronunciationModel) then) =
      _$DictionaryPronunciationModelCopyWithImpl<$Res>;
  $Res call(
      {List<Map<String, dynamic>> transcriptions,
      List<Map<String, dynamic>> audio,
      List<Map<String, dynamic>> context});
}

/// @nodoc
class _$DictionaryPronunciationModelCopyWithImpl<$Res>
    implements $DictionaryPronunciationModelCopyWith<$Res> {
  _$DictionaryPronunciationModelCopyWithImpl(this._value, this._then);

  final DictionaryPronunciationModel _value;
  // ignore: unused_field
  final $Res Function(DictionaryPronunciationModel) _then;

  @override
  $Res call({
    Object? transcriptions = freezed,
    Object? audio = freezed,
    Object? context = freezed,
  }) {
    return _then(_value.copyWith(
      transcriptions: transcriptions == freezed
          ? _value.transcriptions
          : transcriptions // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
      audio: audio == freezed
          ? _value.audio
          : audio // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
      context: context == freezed
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
    ));
  }
}

/// @nodoc
abstract class _$DictionaryPronunciationModelCopyWith<$Res>
    implements $DictionaryPronunciationModelCopyWith<$Res> {
  factory _$DictionaryPronunciationModelCopyWith(
          _DictionaryPronunciationModel value,
          $Res Function(_DictionaryPronunciationModel) then) =
      __$DictionaryPronunciationModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<Map<String, dynamic>> transcriptions,
      List<Map<String, dynamic>> audio,
      List<Map<String, dynamic>> context});
}

/// @nodoc
class __$DictionaryPronunciationModelCopyWithImpl<$Res>
    extends _$DictionaryPronunciationModelCopyWithImpl<$Res>
    implements _$DictionaryPronunciationModelCopyWith<$Res> {
  __$DictionaryPronunciationModelCopyWithImpl(
      _DictionaryPronunciationModel _value,
      $Res Function(_DictionaryPronunciationModel) _then)
      : super(_value, (v) => _then(v as _DictionaryPronunciationModel));

  @override
  _DictionaryPronunciationModel get _value =>
      super._value as _DictionaryPronunciationModel;

  @override
  $Res call({
    Object? transcriptions = freezed,
    Object? audio = freezed,
    Object? context = freezed,
  }) {
    return _then(_DictionaryPronunciationModel(
      transcriptions: transcriptions == freezed
          ? _value.transcriptions
          : transcriptions // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
      audio: audio == freezed
          ? _value.audio
          : audio // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
      context: context == freezed
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_DictionaryPronunciationModel implements _DictionaryPronunciationModel {
  _$_DictionaryPronunciationModel(
      {required this.transcriptions,
      required this.audio,
      required this.context});

  factory _$_DictionaryPronunciationModel.fromJson(Map<String, dynamic> json) =>
      _$_$_DictionaryPronunciationModelFromJson(json);

  @override
  final List<Map<String, dynamic>> transcriptions;
  @override
  final List<Map<String, dynamic>> audio;
  @override
  final List<Map<String, dynamic>> context;

  @override
  String toString() {
    return 'DictionaryPronunciationModel(transcriptions: $transcriptions, audio: $audio, context: $context)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DictionaryPronunciationModel &&
            (identical(other.transcriptions, transcriptions) ||
                const DeepCollectionEquality()
                    .equals(other.transcriptions, transcriptions)) &&
            (identical(other.audio, audio) ||
                const DeepCollectionEquality().equals(other.audio, audio)) &&
            (identical(other.context, context) ||
                const DeepCollectionEquality().equals(other.context, context)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(transcriptions) ^
      const DeepCollectionEquality().hash(audio) ^
      const DeepCollectionEquality().hash(context);

  @JsonKey(ignore: true)
  @override
  _$DictionaryPronunciationModelCopyWith<_DictionaryPronunciationModel>
      get copyWith => __$DictionaryPronunciationModelCopyWithImpl<
          _DictionaryPronunciationModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_DictionaryPronunciationModelToJson(this);
  }
}

abstract class _DictionaryPronunciationModel
    implements DictionaryPronunciationModel {
  factory _DictionaryPronunciationModel(
          {required List<Map<String, dynamic>> transcriptions,
          required List<Map<String, dynamic>> audio,
          required List<Map<String, dynamic>> context}) =
      _$_DictionaryPronunciationModel;

  factory _DictionaryPronunciationModel.fromJson(Map<String, dynamic> json) =
      _$_DictionaryPronunciationModel.fromJson;

  @override
  List<Map<String, dynamic>> get transcriptions =>
      throw _privateConstructorUsedError;
  @override
  List<Map<String, dynamic>> get audio => throw _privateConstructorUsedError;
  @override
  List<Map<String, dynamic>> get context => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$DictionaryPronunciationModelCopyWith<_DictionaryPronunciationModel>
      get copyWith => throw _privateConstructorUsedError;
}

DictionaryLexemeModel _$DictionaryLexemeModelFromJson(
    Map<String, dynamic> json) {
  return _DictionaryLexemeModel.fromJson(json);
}

/// @nodoc
class _$DictionaryLexemeModelTearOff {
  const _$DictionaryLexemeModelTearOff();

  _DictionaryLexemeModel call(
      {required String lemma,
      required String partOfSpeech,
      required List<DictionarySenseModel> senses,
      required List<DictionaryFormModel> forms,
      required List<Map<String, dynamic>> synonymSets,
      required List<Map<String, dynamic>> antonymSets}) {
    return _DictionaryLexemeModel(
      lemma: lemma,
      partOfSpeech: partOfSpeech,
      senses: senses,
      forms: forms,
      synonymSets: synonymSets,
      antonymSets: antonymSets,
    );
  }

  DictionaryLexemeModel fromJson(Map<String, Object> json) {
    return DictionaryLexemeModel.fromJson(json);
  }
}

/// @nodoc
const $DictionaryLexemeModel = _$DictionaryLexemeModelTearOff();

/// @nodoc
mixin _$DictionaryLexemeModel {
  String get lemma => throw _privateConstructorUsedError;
  String get partOfSpeech => throw _privateConstructorUsedError;
  List<DictionarySenseModel> get senses => throw _privateConstructorUsedError;
  List<DictionaryFormModel> get forms => throw _privateConstructorUsedError;
  List<Map<String, dynamic>> get synonymSets =>
      throw _privateConstructorUsedError;
  List<Map<String, dynamic>> get antonymSets =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DictionaryLexemeModelCopyWith<DictionaryLexemeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DictionaryLexemeModelCopyWith<$Res> {
  factory $DictionaryLexemeModelCopyWith(DictionaryLexemeModel value,
          $Res Function(DictionaryLexemeModel) then) =
      _$DictionaryLexemeModelCopyWithImpl<$Res>;
  $Res call(
      {String lemma,
      String partOfSpeech,
      List<DictionarySenseModel> senses,
      List<DictionaryFormModel> forms,
      List<Map<String, dynamic>> synonymSets,
      List<Map<String, dynamic>> antonymSets});
}

/// @nodoc
class _$DictionaryLexemeModelCopyWithImpl<$Res>
    implements $DictionaryLexemeModelCopyWith<$Res> {
  _$DictionaryLexemeModelCopyWithImpl(this._value, this._then);

  final DictionaryLexemeModel _value;
  // ignore: unused_field
  final $Res Function(DictionaryLexemeModel) _then;

  @override
  $Res call({
    Object? lemma = freezed,
    Object? partOfSpeech = freezed,
    Object? senses = freezed,
    Object? forms = freezed,
    Object? synonymSets = freezed,
    Object? antonymSets = freezed,
  }) {
    return _then(_value.copyWith(
      lemma: lemma == freezed
          ? _value.lemma
          : lemma // ignore: cast_nullable_to_non_nullable
              as String,
      partOfSpeech: partOfSpeech == freezed
          ? _value.partOfSpeech
          : partOfSpeech // ignore: cast_nullable_to_non_nullable
              as String,
      senses: senses == freezed
          ? _value.senses
          : senses // ignore: cast_nullable_to_non_nullable
              as List<DictionarySenseModel>,
      forms: forms == freezed
          ? _value.forms
          : forms // ignore: cast_nullable_to_non_nullable
              as List<DictionaryFormModel>,
      synonymSets: synonymSets == freezed
          ? _value.synonymSets
          : synonymSets // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
      antonymSets: antonymSets == freezed
          ? _value.antonymSets
          : antonymSets // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
    ));
  }
}

/// @nodoc
abstract class _$DictionaryLexemeModelCopyWith<$Res>
    implements $DictionaryLexemeModelCopyWith<$Res> {
  factory _$DictionaryLexemeModelCopyWith(_DictionaryLexemeModel value,
          $Res Function(_DictionaryLexemeModel) then) =
      __$DictionaryLexemeModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String lemma,
      String partOfSpeech,
      List<DictionarySenseModel> senses,
      List<DictionaryFormModel> forms,
      List<Map<String, dynamic>> synonymSets,
      List<Map<String, dynamic>> antonymSets});
}

/// @nodoc
class __$DictionaryLexemeModelCopyWithImpl<$Res>
    extends _$DictionaryLexemeModelCopyWithImpl<$Res>
    implements _$DictionaryLexemeModelCopyWith<$Res> {
  __$DictionaryLexemeModelCopyWithImpl(_DictionaryLexemeModel _value,
      $Res Function(_DictionaryLexemeModel) _then)
      : super(_value, (v) => _then(v as _DictionaryLexemeModel));

  @override
  _DictionaryLexemeModel get _value => super._value as _DictionaryLexemeModel;

  @override
  $Res call({
    Object? lemma = freezed,
    Object? partOfSpeech = freezed,
    Object? senses = freezed,
    Object? forms = freezed,
    Object? synonymSets = freezed,
    Object? antonymSets = freezed,
  }) {
    return _then(_DictionaryLexemeModel(
      lemma: lemma == freezed
          ? _value.lemma
          : lemma // ignore: cast_nullable_to_non_nullable
              as String,
      partOfSpeech: partOfSpeech == freezed
          ? _value.partOfSpeech
          : partOfSpeech // ignore: cast_nullable_to_non_nullable
              as String,
      senses: senses == freezed
          ? _value.senses
          : senses // ignore: cast_nullable_to_non_nullable
              as List<DictionarySenseModel>,
      forms: forms == freezed
          ? _value.forms
          : forms // ignore: cast_nullable_to_non_nullable
              as List<DictionaryFormModel>,
      synonymSets: synonymSets == freezed
          ? _value.synonymSets
          : synonymSets // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
      antonymSets: antonymSets == freezed
          ? _value.antonymSets
          : antonymSets // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_DictionaryLexemeModel implements _DictionaryLexemeModel {
  _$_DictionaryLexemeModel(
      {required this.lemma,
      required this.partOfSpeech,
      required this.senses,
      required this.forms,
      required this.synonymSets,
      required this.antonymSets});

  factory _$_DictionaryLexemeModel.fromJson(Map<String, dynamic> json) =>
      _$_$_DictionaryLexemeModelFromJson(json);

  @override
  final String lemma;
  @override
  final String partOfSpeech;
  @override
  final List<DictionarySenseModel> senses;
  @override
  final List<DictionaryFormModel> forms;
  @override
  final List<Map<String, dynamic>> synonymSets;
  @override
  final List<Map<String, dynamic>> antonymSets;

  @override
  String toString() {
    return 'DictionaryLexemeModel(lemma: $lemma, partOfSpeech: $partOfSpeech, senses: $senses, forms: $forms, synonymSets: $synonymSets, antonymSets: $antonymSets)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DictionaryLexemeModel &&
            (identical(other.lemma, lemma) ||
                const DeepCollectionEquality().equals(other.lemma, lemma)) &&
            (identical(other.partOfSpeech, partOfSpeech) ||
                const DeepCollectionEquality()
                    .equals(other.partOfSpeech, partOfSpeech)) &&
            (identical(other.senses, senses) ||
                const DeepCollectionEquality().equals(other.senses, senses)) &&
            (identical(other.forms, forms) ||
                const DeepCollectionEquality().equals(other.forms, forms)) &&
            (identical(other.synonymSets, synonymSets) ||
                const DeepCollectionEquality()
                    .equals(other.synonymSets, synonymSets)) &&
            (identical(other.antonymSets, antonymSets) ||
                const DeepCollectionEquality()
                    .equals(other.antonymSets, antonymSets)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(lemma) ^
      const DeepCollectionEquality().hash(partOfSpeech) ^
      const DeepCollectionEquality().hash(senses) ^
      const DeepCollectionEquality().hash(forms) ^
      const DeepCollectionEquality().hash(synonymSets) ^
      const DeepCollectionEquality().hash(antonymSets);

  @JsonKey(ignore: true)
  @override
  _$DictionaryLexemeModelCopyWith<_DictionaryLexemeModel> get copyWith =>
      __$DictionaryLexemeModelCopyWithImpl<_DictionaryLexemeModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_DictionaryLexemeModelToJson(this);
  }
}

abstract class _DictionaryLexemeModel implements DictionaryLexemeModel {
  factory _DictionaryLexemeModel(
          {required String lemma,
          required String partOfSpeech,
          required List<DictionarySenseModel> senses,
          required List<DictionaryFormModel> forms,
          required List<Map<String, dynamic>> synonymSets,
          required List<Map<String, dynamic>> antonymSets}) =
      _$_DictionaryLexemeModel;

  factory _DictionaryLexemeModel.fromJson(Map<String, dynamic> json) =
      _$_DictionaryLexemeModel.fromJson;

  @override
  String get lemma => throw _privateConstructorUsedError;
  @override
  String get partOfSpeech => throw _privateConstructorUsedError;
  @override
  List<DictionarySenseModel> get senses => throw _privateConstructorUsedError;
  @override
  List<DictionaryFormModel> get forms => throw _privateConstructorUsedError;
  @override
  List<Map<String, dynamic>> get synonymSets =>
      throw _privateConstructorUsedError;
  @override
  List<Map<String, dynamic>> get antonymSets =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$DictionaryLexemeModelCopyWith<_DictionaryLexemeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

DictionarySenseModel _$DictionarySenseModelFromJson(Map<String, dynamic> json) {
  return _DictionarySenseModel.fromJson(json);
}

/// @nodoc
class _$DictionarySenseModelTearOff {
  const _$DictionarySenseModelTearOff();

  _DictionarySenseModel call(
      {required String definition,
      required List<String> labels,
      required List<String> usageExamples}) {
    return _DictionarySenseModel(
      definition: definition,
      labels: labels,
      usageExamples: usageExamples,
    );
  }

  DictionarySenseModel fromJson(Map<String, Object> json) {
    return DictionarySenseModel.fromJson(json);
  }
}

/// @nodoc
const $DictionarySenseModel = _$DictionarySenseModelTearOff();

/// @nodoc
mixin _$DictionarySenseModel {
  String get definition => throw _privateConstructorUsedError;
  List<String> get labels => throw _privateConstructorUsedError;
  List<String> get usageExamples => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DictionarySenseModelCopyWith<DictionarySenseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DictionarySenseModelCopyWith<$Res> {
  factory $DictionarySenseModelCopyWith(DictionarySenseModel value,
          $Res Function(DictionarySenseModel) then) =
      _$DictionarySenseModelCopyWithImpl<$Res>;
  $Res call(
      {String definition, List<String> labels, List<String> usageExamples});
}

/// @nodoc
class _$DictionarySenseModelCopyWithImpl<$Res>
    implements $DictionarySenseModelCopyWith<$Res> {
  _$DictionarySenseModelCopyWithImpl(this._value, this._then);

  final DictionarySenseModel _value;
  // ignore: unused_field
  final $Res Function(DictionarySenseModel) _then;

  @override
  $Res call({
    Object? definition = freezed,
    Object? labels = freezed,
    Object? usageExamples = freezed,
  }) {
    return _then(_value.copyWith(
      definition: definition == freezed
          ? _value.definition
          : definition // ignore: cast_nullable_to_non_nullable
              as String,
      labels: labels == freezed
          ? _value.labels
          : labels // ignore: cast_nullable_to_non_nullable
              as List<String>,
      usageExamples: usageExamples == freezed
          ? _value.usageExamples
          : usageExamples // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
abstract class _$DictionarySenseModelCopyWith<$Res>
    implements $DictionarySenseModelCopyWith<$Res> {
  factory _$DictionarySenseModelCopyWith(_DictionarySenseModel value,
          $Res Function(_DictionarySenseModel) then) =
      __$DictionarySenseModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String definition, List<String> labels, List<String> usageExamples});
}

/// @nodoc
class __$DictionarySenseModelCopyWithImpl<$Res>
    extends _$DictionarySenseModelCopyWithImpl<$Res>
    implements _$DictionarySenseModelCopyWith<$Res> {
  __$DictionarySenseModelCopyWithImpl(
      _DictionarySenseModel _value, $Res Function(_DictionarySenseModel) _then)
      : super(_value, (v) => _then(v as _DictionarySenseModel));

  @override
  _DictionarySenseModel get _value => super._value as _DictionarySenseModel;

  @override
  $Res call({
    Object? definition = freezed,
    Object? labels = freezed,
    Object? usageExamples = freezed,
  }) {
    return _then(_DictionarySenseModel(
      definition: definition == freezed
          ? _value.definition
          : definition // ignore: cast_nullable_to_non_nullable
              as String,
      labels: labels == freezed
          ? _value.labels
          : labels // ignore: cast_nullable_to_non_nullable
              as List<String>,
      usageExamples: usageExamples == freezed
          ? _value.usageExamples
          : usageExamples // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_DictionarySenseModel implements _DictionarySenseModel {
  _$_DictionarySenseModel(
      {required this.definition,
      required this.labels,
      required this.usageExamples});

  factory _$_DictionarySenseModel.fromJson(Map<String, dynamic> json) =>
      _$_$_DictionarySenseModelFromJson(json);

  @override
  final String definition;
  @override
  final List<String> labels;
  @override
  final List<String> usageExamples;

  @override
  String toString() {
    return 'DictionarySenseModel(definition: $definition, labels: $labels, usageExamples: $usageExamples)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DictionarySenseModel &&
            (identical(other.definition, definition) ||
                const DeepCollectionEquality()
                    .equals(other.definition, definition)) &&
            (identical(other.labels, labels) ||
                const DeepCollectionEquality().equals(other.labels, labels)) &&
            (identical(other.usageExamples, usageExamples) ||
                const DeepCollectionEquality()
                    .equals(other.usageExamples, usageExamples)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(definition) ^
      const DeepCollectionEquality().hash(labels) ^
      const DeepCollectionEquality().hash(usageExamples);

  @JsonKey(ignore: true)
  @override
  _$DictionarySenseModelCopyWith<_DictionarySenseModel> get copyWith =>
      __$DictionarySenseModelCopyWithImpl<_DictionarySenseModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_DictionarySenseModelToJson(this);
  }
}

abstract class _DictionarySenseModel implements DictionarySenseModel {
  factory _DictionarySenseModel(
      {required String definition,
      required List<String> labels,
      required List<String> usageExamples}) = _$_DictionarySenseModel;

  factory _DictionarySenseModel.fromJson(Map<String, dynamic> json) =
      _$_DictionarySenseModel.fromJson;

  @override
  String get definition => throw _privateConstructorUsedError;
  @override
  List<String> get labels => throw _privateConstructorUsedError;
  @override
  List<String> get usageExamples => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$DictionarySenseModelCopyWith<_DictionarySenseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

DictionaryFormModel _$DictionaryFormModelFromJson(Map<String, dynamic> json) {
  return _DictionaryFormModel.fromJson(json);
}

/// @nodoc
class _$DictionaryFormModelTearOff {
  const _$DictionaryFormModelTearOff();

  _DictionaryFormModel call(
      {required String form,
      required List<Map<String, dynamic>> grammar,
      required List<String> labels}) {
    return _DictionaryFormModel(
      form: form,
      grammar: grammar,
      labels: labels,
    );
  }

  DictionaryFormModel fromJson(Map<String, Object> json) {
    return DictionaryFormModel.fromJson(json);
  }
}

/// @nodoc
const $DictionaryFormModel = _$DictionaryFormModelTearOff();

/// @nodoc
mixin _$DictionaryFormModel {
  String get form => throw _privateConstructorUsedError;
  List<Map<String, dynamic>> get grammar => throw _privateConstructorUsedError;
  List<String> get labels => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DictionaryFormModelCopyWith<DictionaryFormModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DictionaryFormModelCopyWith<$Res> {
  factory $DictionaryFormModelCopyWith(
          DictionaryFormModel value, $Res Function(DictionaryFormModel) then) =
      _$DictionaryFormModelCopyWithImpl<$Res>;
  $Res call(
      {String form, List<Map<String, dynamic>> grammar, List<String> labels});
}

/// @nodoc
class _$DictionaryFormModelCopyWithImpl<$Res>
    implements $DictionaryFormModelCopyWith<$Res> {
  _$DictionaryFormModelCopyWithImpl(this._value, this._then);

  final DictionaryFormModel _value;
  // ignore: unused_field
  final $Res Function(DictionaryFormModel) _then;

  @override
  $Res call({
    Object? form = freezed,
    Object? grammar = freezed,
    Object? labels = freezed,
  }) {
    return _then(_value.copyWith(
      form: form == freezed
          ? _value.form
          : form // ignore: cast_nullable_to_non_nullable
              as String,
      grammar: grammar == freezed
          ? _value.grammar
          : grammar // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
      labels: labels == freezed
          ? _value.labels
          : labels // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
abstract class _$DictionaryFormModelCopyWith<$Res>
    implements $DictionaryFormModelCopyWith<$Res> {
  factory _$DictionaryFormModelCopyWith(_DictionaryFormModel value,
          $Res Function(_DictionaryFormModel) then) =
      __$DictionaryFormModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String form, List<Map<String, dynamic>> grammar, List<String> labels});
}

/// @nodoc
class __$DictionaryFormModelCopyWithImpl<$Res>
    extends _$DictionaryFormModelCopyWithImpl<$Res>
    implements _$DictionaryFormModelCopyWith<$Res> {
  __$DictionaryFormModelCopyWithImpl(
      _DictionaryFormModel _value, $Res Function(_DictionaryFormModel) _then)
      : super(_value, (v) => _then(v as _DictionaryFormModel));

  @override
  _DictionaryFormModel get _value => super._value as _DictionaryFormModel;

  @override
  $Res call({
    Object? form = freezed,
    Object? grammar = freezed,
    Object? labels = freezed,
  }) {
    return _then(_DictionaryFormModel(
      form: form == freezed
          ? _value.form
          : form // ignore: cast_nullable_to_non_nullable
              as String,
      grammar: grammar == freezed
          ? _value.grammar
          : grammar // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
      labels: labels == freezed
          ? _value.labels
          : labels // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_DictionaryFormModel implements _DictionaryFormModel {
  _$_DictionaryFormModel(
      {required this.form, required this.grammar, required this.labels});

  factory _$_DictionaryFormModel.fromJson(Map<String, dynamic> json) =>
      _$_$_DictionaryFormModelFromJson(json);

  @override
  final String form;
  @override
  final List<Map<String, dynamic>> grammar;
  @override
  final List<String> labels;

  @override
  String toString() {
    return 'DictionaryFormModel(form: $form, grammar: $grammar, labels: $labels)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DictionaryFormModel &&
            (identical(other.form, form) ||
                const DeepCollectionEquality().equals(other.form, form)) &&
            (identical(other.grammar, grammar) ||
                const DeepCollectionEquality()
                    .equals(other.grammar, grammar)) &&
            (identical(other.labels, labels) ||
                const DeepCollectionEquality().equals(other.labels, labels)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(form) ^
      const DeepCollectionEquality().hash(grammar) ^
      const DeepCollectionEquality().hash(labels);

  @JsonKey(ignore: true)
  @override
  _$DictionaryFormModelCopyWith<_DictionaryFormModel> get copyWith =>
      __$DictionaryFormModelCopyWithImpl<_DictionaryFormModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_DictionaryFormModelToJson(this);
  }
}

abstract class _DictionaryFormModel implements DictionaryFormModel {
  factory _DictionaryFormModel(
      {required String form,
      required List<Map<String, dynamic>> grammar,
      required List<String> labels}) = _$_DictionaryFormModel;

  factory _DictionaryFormModel.fromJson(Map<String, dynamic> json) =
      _$_DictionaryFormModel.fromJson;

  @override
  String get form => throw _privateConstructorUsedError;
  @override
  List<Map<String, dynamic>> get grammar => throw _privateConstructorUsedError;
  @override
  List<String> get labels => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$DictionaryFormModelCopyWith<_DictionaryFormModel> get copyWith =>
      throw _privateConstructorUsedError;
}
