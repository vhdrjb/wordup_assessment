// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'word_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$WordDto implements DiagnosticableTreeMixin {

 String? get usage; List<PhraseDto>? get senses; List<PhraseDto>? get phrases; List<String>? get quotes; List<String>? get videos; List<String>? get comparisons; List<String>? get wisdom; List<String>? get facts; String? get misspellings;
/// Create a copy of WordDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WordDtoCopyWith<WordDto> get copyWith => _$WordDtoCopyWithImpl<WordDto>(this as WordDto, _$identity);

  /// Serializes this WordDto to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'WordDto'))
    ..add(DiagnosticsProperty('usage', usage))..add(DiagnosticsProperty('senses', senses))..add(DiagnosticsProperty('phrases', phrases))..add(DiagnosticsProperty('quotes', quotes))..add(DiagnosticsProperty('videos', videos))..add(DiagnosticsProperty('comparisons', comparisons))..add(DiagnosticsProperty('wisdom', wisdom))..add(DiagnosticsProperty('facts', facts))..add(DiagnosticsProperty('misspellings', misspellings));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WordDto&&(identical(other.usage, usage) || other.usage == usage)&&const DeepCollectionEquality().equals(other.senses, senses)&&const DeepCollectionEquality().equals(other.phrases, phrases)&&const DeepCollectionEquality().equals(other.quotes, quotes)&&const DeepCollectionEquality().equals(other.videos, videos)&&const DeepCollectionEquality().equals(other.comparisons, comparisons)&&const DeepCollectionEquality().equals(other.wisdom, wisdom)&&const DeepCollectionEquality().equals(other.facts, facts)&&(identical(other.misspellings, misspellings) || other.misspellings == misspellings));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,usage,const DeepCollectionEquality().hash(senses),const DeepCollectionEquality().hash(phrases),const DeepCollectionEquality().hash(quotes),const DeepCollectionEquality().hash(videos),const DeepCollectionEquality().hash(comparisons),const DeepCollectionEquality().hash(wisdom),const DeepCollectionEquality().hash(facts),misspellings);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'WordDto(usage: $usage, senses: $senses, phrases: $phrases, quotes: $quotes, videos: $videos, comparisons: $comparisons, wisdom: $wisdom, facts: $facts, misspellings: $misspellings)';
}


}

/// @nodoc
abstract mixin class $WordDtoCopyWith<$Res>  {
  factory $WordDtoCopyWith(WordDto value, $Res Function(WordDto) _then) = _$WordDtoCopyWithImpl;
@useResult
$Res call({
 String? usage, List<PhraseDto>? senses, List<PhraseDto>? phrases, List<String>? quotes, List<String>? videos, List<String>? comparisons, List<String>? wisdom, List<String>? facts, String? misspellings
});




}
/// @nodoc
class _$WordDtoCopyWithImpl<$Res>
    implements $WordDtoCopyWith<$Res> {
  _$WordDtoCopyWithImpl(this._self, this._then);

  final WordDto _self;
  final $Res Function(WordDto) _then;

/// Create a copy of WordDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? usage = freezed,Object? senses = freezed,Object? phrases = freezed,Object? quotes = freezed,Object? videos = freezed,Object? comparisons = freezed,Object? wisdom = freezed,Object? facts = freezed,Object? misspellings = freezed,}) {
  return _then(_self.copyWith(
usage: freezed == usage ? _self.usage : usage // ignore: cast_nullable_to_non_nullable
as String?,senses: freezed == senses ? _self.senses : senses // ignore: cast_nullable_to_non_nullable
as List<PhraseDto>?,phrases: freezed == phrases ? _self.phrases : phrases // ignore: cast_nullable_to_non_nullable
as List<PhraseDto>?,quotes: freezed == quotes ? _self.quotes : quotes // ignore: cast_nullable_to_non_nullable
as List<String>?,videos: freezed == videos ? _self.videos : videos // ignore: cast_nullable_to_non_nullable
as List<String>?,comparisons: freezed == comparisons ? _self.comparisons : comparisons // ignore: cast_nullable_to_non_nullable
as List<String>?,wisdom: freezed == wisdom ? _self.wisdom : wisdom // ignore: cast_nullable_to_non_nullable
as List<String>?,facts: freezed == facts ? _self.facts : facts // ignore: cast_nullable_to_non_nullable
as List<String>?,misspellings: freezed == misspellings ? _self.misspellings : misspellings // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// @nodoc

@JsonSerializable(fieldRename: FieldRename.pascal)
class _WordDto with DiagnosticableTreeMixin implements WordDto {
  const _WordDto({this.usage, final  List<PhraseDto>? senses, final  List<PhraseDto>? phrases, final  List<String>? quotes, final  List<String>? videos, final  List<String>? comparisons, final  List<String>? wisdom, final  List<String>? facts, this.misspellings}): _senses = senses,_phrases = phrases,_quotes = quotes,_videos = videos,_comparisons = comparisons,_wisdom = wisdom,_facts = facts;
  factory _WordDto.fromJson(Map<String, dynamic> json) => _$WordDtoFromJson(json);

@override final  String? usage;
 final  List<PhraseDto>? _senses;
@override List<PhraseDto>? get senses {
  final value = _senses;
  if (value == null) return null;
  if (_senses is EqualUnmodifiableListView) return _senses;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<PhraseDto>? _phrases;
@override List<PhraseDto>? get phrases {
  final value = _phrases;
  if (value == null) return null;
  if (_phrases is EqualUnmodifiableListView) return _phrases;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<String>? _quotes;
@override List<String>? get quotes {
  final value = _quotes;
  if (value == null) return null;
  if (_quotes is EqualUnmodifiableListView) return _quotes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<String>? _videos;
@override List<String>? get videos {
  final value = _videos;
  if (value == null) return null;
  if (_videos is EqualUnmodifiableListView) return _videos;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<String>? _comparisons;
@override List<String>? get comparisons {
  final value = _comparisons;
  if (value == null) return null;
  if (_comparisons is EqualUnmodifiableListView) return _comparisons;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<String>? _wisdom;
@override List<String>? get wisdom {
  final value = _wisdom;
  if (value == null) return null;
  if (_wisdom is EqualUnmodifiableListView) return _wisdom;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<String>? _facts;
@override List<String>? get facts {
  final value = _facts;
  if (value == null) return null;
  if (_facts is EqualUnmodifiableListView) return _facts;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  String? misspellings;

/// Create a copy of WordDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WordDtoCopyWith<_WordDto> get copyWith => __$WordDtoCopyWithImpl<_WordDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WordDtoToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'WordDto'))
    ..add(DiagnosticsProperty('usage', usage))..add(DiagnosticsProperty('senses', senses))..add(DiagnosticsProperty('phrases', phrases))..add(DiagnosticsProperty('quotes', quotes))..add(DiagnosticsProperty('videos', videos))..add(DiagnosticsProperty('comparisons', comparisons))..add(DiagnosticsProperty('wisdom', wisdom))..add(DiagnosticsProperty('facts', facts))..add(DiagnosticsProperty('misspellings', misspellings));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WordDto&&(identical(other.usage, usage) || other.usage == usage)&&const DeepCollectionEquality().equals(other._senses, _senses)&&const DeepCollectionEquality().equals(other._phrases, _phrases)&&const DeepCollectionEquality().equals(other._quotes, _quotes)&&const DeepCollectionEquality().equals(other._videos, _videos)&&const DeepCollectionEquality().equals(other._comparisons, _comparisons)&&const DeepCollectionEquality().equals(other._wisdom, _wisdom)&&const DeepCollectionEquality().equals(other._facts, _facts)&&(identical(other.misspellings, misspellings) || other.misspellings == misspellings));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,usage,const DeepCollectionEquality().hash(_senses),const DeepCollectionEquality().hash(_phrases),const DeepCollectionEquality().hash(_quotes),const DeepCollectionEquality().hash(_videos),const DeepCollectionEquality().hash(_comparisons),const DeepCollectionEquality().hash(_wisdom),const DeepCollectionEquality().hash(_facts),misspellings);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'WordDto(usage: $usage, senses: $senses, phrases: $phrases, quotes: $quotes, videos: $videos, comparisons: $comparisons, wisdom: $wisdom, facts: $facts, misspellings: $misspellings)';
}


}

/// @nodoc
abstract mixin class _$WordDtoCopyWith<$Res> implements $WordDtoCopyWith<$Res> {
  factory _$WordDtoCopyWith(_WordDto value, $Res Function(_WordDto) _then) = __$WordDtoCopyWithImpl;
@override @useResult
$Res call({
 String? usage, List<PhraseDto>? senses, List<PhraseDto>? phrases, List<String>? quotes, List<String>? videos, List<String>? comparisons, List<String>? wisdom, List<String>? facts, String? misspellings
});




}
/// @nodoc
class __$WordDtoCopyWithImpl<$Res>
    implements _$WordDtoCopyWith<$Res> {
  __$WordDtoCopyWithImpl(this._self, this._then);

  final _WordDto _self;
  final $Res Function(_WordDto) _then;

/// Create a copy of WordDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? usage = freezed,Object? senses = freezed,Object? phrases = freezed,Object? quotes = freezed,Object? videos = freezed,Object? comparisons = freezed,Object? wisdom = freezed,Object? facts = freezed,Object? misspellings = freezed,}) {
  return _then(_WordDto(
usage: freezed == usage ? _self.usage : usage // ignore: cast_nullable_to_non_nullable
as String?,senses: freezed == senses ? _self._senses : senses // ignore: cast_nullable_to_non_nullable
as List<PhraseDto>?,phrases: freezed == phrases ? _self._phrases : phrases // ignore: cast_nullable_to_non_nullable
as List<PhraseDto>?,quotes: freezed == quotes ? _self._quotes : quotes // ignore: cast_nullable_to_non_nullable
as List<String>?,videos: freezed == videos ? _self._videos : videos // ignore: cast_nullable_to_non_nullable
as List<String>?,comparisons: freezed == comparisons ? _self._comparisons : comparisons // ignore: cast_nullable_to_non_nullable
as List<String>?,wisdom: freezed == wisdom ? _self._wisdom : wisdom // ignore: cast_nullable_to_non_nullable
as List<String>?,facts: freezed == facts ? _self._facts : facts // ignore: cast_nullable_to_non_nullable
as List<String>?,misspellings: freezed == misspellings ? _self.misspellings : misspellings // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$PhraseDto implements DiagnosticableTreeMixin {

 String? get id;@JsonKey(name: "de") String? get definition;@JsonKey(name: "do") String? get phraseDo;@JsonKey(name: "ty") String? get typeOfWord;@JsonKey(name: "ex") String? get example;@JsonKey(name: "co") String? get co;@JsonKey(name: "sy") String? get sy;@JsonKey(name: "op") String? get opposites;@JsonKey(name: "cl") List<String>? get commonPhrases;@JsonKey(name: "tp") String? get proTips;
/// Create a copy of PhraseDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PhraseDtoCopyWith<PhraseDto> get copyWith => _$PhraseDtoCopyWithImpl<PhraseDto>(this as PhraseDto, _$identity);

  /// Serializes this PhraseDto to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'PhraseDto'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('definition', definition))..add(DiagnosticsProperty('phraseDo', phraseDo))..add(DiagnosticsProperty('typeOfWord', typeOfWord))..add(DiagnosticsProperty('example', example))..add(DiagnosticsProperty('co', co))..add(DiagnosticsProperty('sy', sy))..add(DiagnosticsProperty('opposites', opposites))..add(DiagnosticsProperty('commonPhrases', commonPhrases))..add(DiagnosticsProperty('proTips', proTips));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PhraseDto&&(identical(other.id, id) || other.id == id)&&(identical(other.definition, definition) || other.definition == definition)&&(identical(other.phraseDo, phraseDo) || other.phraseDo == phraseDo)&&(identical(other.typeOfWord, typeOfWord) || other.typeOfWord == typeOfWord)&&(identical(other.example, example) || other.example == example)&&(identical(other.co, co) || other.co == co)&&(identical(other.sy, sy) || other.sy == sy)&&(identical(other.opposites, opposites) || other.opposites == opposites)&&const DeepCollectionEquality().equals(other.commonPhrases, commonPhrases)&&(identical(other.proTips, proTips) || other.proTips == proTips));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,definition,phraseDo,typeOfWord,example,co,sy,opposites,const DeepCollectionEquality().hash(commonPhrases),proTips);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'PhraseDto(id: $id, definition: $definition, phraseDo: $phraseDo, typeOfWord: $typeOfWord, example: $example, co: $co, sy: $sy, opposites: $opposites, commonPhrases: $commonPhrases, proTips: $proTips)';
}


}

/// @nodoc
abstract mixin class $PhraseDtoCopyWith<$Res>  {
  factory $PhraseDtoCopyWith(PhraseDto value, $Res Function(PhraseDto) _then) = _$PhraseDtoCopyWithImpl;
@useResult
$Res call({
 String? id,@JsonKey(name: "de") String? definition,@JsonKey(name: "do") String? phraseDo,@JsonKey(name: "ty") String? typeOfWord,@JsonKey(name: "ex") String? example,@JsonKey(name: "co") String? co,@JsonKey(name: "sy") String? sy,@JsonKey(name: "op") String? opposites,@JsonKey(name: "cl") List<String>? commonPhrases,@JsonKey(name: "tp") String? proTips
});




}
/// @nodoc
class _$PhraseDtoCopyWithImpl<$Res>
    implements $PhraseDtoCopyWith<$Res> {
  _$PhraseDtoCopyWithImpl(this._self, this._then);

  final PhraseDto _self;
  final $Res Function(PhraseDto) _then;

/// Create a copy of PhraseDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? definition = freezed,Object? phraseDo = freezed,Object? typeOfWord = freezed,Object? example = freezed,Object? co = freezed,Object? sy = freezed,Object? opposites = freezed,Object? commonPhrases = freezed,Object? proTips = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,definition: freezed == definition ? _self.definition : definition // ignore: cast_nullable_to_non_nullable
as String?,phraseDo: freezed == phraseDo ? _self.phraseDo : phraseDo // ignore: cast_nullable_to_non_nullable
as String?,typeOfWord: freezed == typeOfWord ? _self.typeOfWord : typeOfWord // ignore: cast_nullable_to_non_nullable
as String?,example: freezed == example ? _self.example : example // ignore: cast_nullable_to_non_nullable
as String?,co: freezed == co ? _self.co : co // ignore: cast_nullable_to_non_nullable
as String?,sy: freezed == sy ? _self.sy : sy // ignore: cast_nullable_to_non_nullable
as String?,opposites: freezed == opposites ? _self.opposites : opposites // ignore: cast_nullable_to_non_nullable
as String?,commonPhrases: freezed == commonPhrases ? _self.commonPhrases : commonPhrases // ignore: cast_nullable_to_non_nullable
as List<String>?,proTips: freezed == proTips ? _self.proTips : proTips // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _PhraseDto with DiagnosticableTreeMixin implements PhraseDto {
  const _PhraseDto({this.id, @JsonKey(name: "de") this.definition, @JsonKey(name: "do") this.phraseDo, @JsonKey(name: "ty") this.typeOfWord, @JsonKey(name: "ex") this.example, @JsonKey(name: "co") this.co, @JsonKey(name: "sy") this.sy, @JsonKey(name: "op") this.opposites, @JsonKey(name: "cl") final  List<String>? commonPhrases, @JsonKey(name: "tp") this.proTips}): _commonPhrases = commonPhrases;
  factory _PhraseDto.fromJson(Map<String, dynamic> json) => _$PhraseDtoFromJson(json);

@override final  String? id;
@override@JsonKey(name: "de") final  String? definition;
@override@JsonKey(name: "do") final  String? phraseDo;
@override@JsonKey(name: "ty") final  String? typeOfWord;
@override@JsonKey(name: "ex") final  String? example;
@override@JsonKey(name: "co") final  String? co;
@override@JsonKey(name: "sy") final  String? sy;
@override@JsonKey(name: "op") final  String? opposites;
 final  List<String>? _commonPhrases;
@override@JsonKey(name: "cl") List<String>? get commonPhrases {
  final value = _commonPhrases;
  if (value == null) return null;
  if (_commonPhrases is EqualUnmodifiableListView) return _commonPhrases;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(name: "tp") final  String? proTips;

/// Create a copy of PhraseDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PhraseDtoCopyWith<_PhraseDto> get copyWith => __$PhraseDtoCopyWithImpl<_PhraseDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PhraseDtoToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'PhraseDto'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('definition', definition))..add(DiagnosticsProperty('phraseDo', phraseDo))..add(DiagnosticsProperty('typeOfWord', typeOfWord))..add(DiagnosticsProperty('example', example))..add(DiagnosticsProperty('co', co))..add(DiagnosticsProperty('sy', sy))..add(DiagnosticsProperty('opposites', opposites))..add(DiagnosticsProperty('commonPhrases', commonPhrases))..add(DiagnosticsProperty('proTips', proTips));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PhraseDto&&(identical(other.id, id) || other.id == id)&&(identical(other.definition, definition) || other.definition == definition)&&(identical(other.phraseDo, phraseDo) || other.phraseDo == phraseDo)&&(identical(other.typeOfWord, typeOfWord) || other.typeOfWord == typeOfWord)&&(identical(other.example, example) || other.example == example)&&(identical(other.co, co) || other.co == co)&&(identical(other.sy, sy) || other.sy == sy)&&(identical(other.opposites, opposites) || other.opposites == opposites)&&const DeepCollectionEquality().equals(other._commonPhrases, _commonPhrases)&&(identical(other.proTips, proTips) || other.proTips == proTips));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,definition,phraseDo,typeOfWord,example,co,sy,opposites,const DeepCollectionEquality().hash(_commonPhrases),proTips);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'PhraseDto(id: $id, definition: $definition, phraseDo: $phraseDo, typeOfWord: $typeOfWord, example: $example, co: $co, sy: $sy, opposites: $opposites, commonPhrases: $commonPhrases, proTips: $proTips)';
}


}

/// @nodoc
abstract mixin class _$PhraseDtoCopyWith<$Res> implements $PhraseDtoCopyWith<$Res> {
  factory _$PhraseDtoCopyWith(_PhraseDto value, $Res Function(_PhraseDto) _then) = __$PhraseDtoCopyWithImpl;
@override @useResult
$Res call({
 String? id,@JsonKey(name: "de") String? definition,@JsonKey(name: "do") String? phraseDo,@JsonKey(name: "ty") String? typeOfWord,@JsonKey(name: "ex") String? example,@JsonKey(name: "co") String? co,@JsonKey(name: "sy") String? sy,@JsonKey(name: "op") String? opposites,@JsonKey(name: "cl") List<String>? commonPhrases,@JsonKey(name: "tp") String? proTips
});




}
/// @nodoc
class __$PhraseDtoCopyWithImpl<$Res>
    implements _$PhraseDtoCopyWith<$Res> {
  __$PhraseDtoCopyWithImpl(this._self, this._then);

  final _PhraseDto _self;
  final $Res Function(_PhraseDto) _then;

/// Create a copy of PhraseDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? definition = freezed,Object? phraseDo = freezed,Object? typeOfWord = freezed,Object? example = freezed,Object? co = freezed,Object? sy = freezed,Object? opposites = freezed,Object? commonPhrases = freezed,Object? proTips = freezed,}) {
  return _then(_PhraseDto(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,definition: freezed == definition ? _self.definition : definition // ignore: cast_nullable_to_non_nullable
as String?,phraseDo: freezed == phraseDo ? _self.phraseDo : phraseDo // ignore: cast_nullable_to_non_nullable
as String?,typeOfWord: freezed == typeOfWord ? _self.typeOfWord : typeOfWord // ignore: cast_nullable_to_non_nullable
as String?,example: freezed == example ? _self.example : example // ignore: cast_nullable_to_non_nullable
as String?,co: freezed == co ? _self.co : co // ignore: cast_nullable_to_non_nullable
as String?,sy: freezed == sy ? _self.sy : sy // ignore: cast_nullable_to_non_nullable
as String?,opposites: freezed == opposites ? _self.opposites : opposites // ignore: cast_nullable_to_non_nullable
as String?,commonPhrases: freezed == commonPhrases ? _self._commonPhrases : commonPhrases // ignore: cast_nullable_to_non_nullable
as List<String>?,proTips: freezed == proTips ? _self.proTips : proTips // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
