// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'definition_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$DefinitionEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DefinitionEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DefinitionEvent()';
}


}

/// @nodoc
class $DefinitionEventCopyWith<$Res>  {
$DefinitionEventCopyWith(DefinitionEvent _, $Res Function(DefinitionEvent) __);
}


/// @nodoc


class _DownloadWordInfo implements DefinitionEvent {
  const _DownloadWordInfo();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DownloadWordInfo);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DefinitionEvent.downloadWordInfo()';
}


}




/// @nodoc


class _UpdateMedia implements DefinitionEvent {
  const _UpdateMedia(this.id);
  

 final  String id;

/// Create a copy of DefinitionEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateMediaCopyWith<_UpdateMedia> get copyWith => __$UpdateMediaCopyWithImpl<_UpdateMedia>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateMedia&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'DefinitionEvent.updateMedia(id: $id)';
}


}

/// @nodoc
abstract mixin class _$UpdateMediaCopyWith<$Res> implements $DefinitionEventCopyWith<$Res> {
  factory _$UpdateMediaCopyWith(_UpdateMedia value, $Res Function(_UpdateMedia) _then) = __$UpdateMediaCopyWithImpl;
@useResult
$Res call({
 String id
});




}
/// @nodoc
class __$UpdateMediaCopyWithImpl<$Res>
    implements _$UpdateMediaCopyWith<$Res> {
  __$UpdateMediaCopyWithImpl(this._self, this._then);

  final _UpdateMedia _self;
  final $Res Function(_UpdateMedia) _then;

/// Create a copy of DefinitionEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(_UpdateMedia(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$DefinitionState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DefinitionState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DefinitionState()';
}


}

/// @nodoc
class $DefinitionStateCopyWith<$Res>  {
$DefinitionStateCopyWith(DefinitionState _, $Res Function(DefinitionState) __);
}


/// @nodoc


class _Initial implements DefinitionState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DefinitionState.initial()';
}


}




/// @nodoc
mixin _$DefinitionWordState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DefinitionWordState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DefinitionWordState()';
}


}

/// @nodoc
class $DefinitionWordStateCopyWith<$Res> implements $DefinitionStateCopyWith<$Res> {
$DefinitionWordStateCopyWith(DefinitionWordState _, $Res Function(DefinitionWordState) __);
}


/// @nodoc


class WordLoading implements DefinitionWordState {
  const WordLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WordLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DefinitionWordState.loading()';
}


}




/// @nodoc


class WordData implements DefinitionWordState {
  const WordData(this.word);
  

 final  WordEntity word;

/// Create a copy of DefinitionWordState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WordDataCopyWith<WordData> get copyWith => _$WordDataCopyWithImpl<WordData>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WordData&&(identical(other.word, word) || other.word == word));
}


@override
int get hashCode => Object.hash(runtimeType,word);

@override
String toString() {
  return 'DefinitionWordState.data(word: $word)';
}


}

/// @nodoc
abstract mixin class $WordDataCopyWith<$Res> implements $DefinitionWordStateCopyWith<$Res> {
  factory $WordDataCopyWith(WordData value, $Res Function(WordData) _then) = _$WordDataCopyWithImpl;
@useResult
$Res call({
 WordEntity word
});




}
/// @nodoc
class _$WordDataCopyWithImpl<$Res>
    implements $WordDataCopyWith<$Res> {
  _$WordDataCopyWithImpl(this._self, this._then);

  final WordData _self;
  final $Res Function(WordData) _then;

/// Create a copy of DefinitionWordState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? word = null,}) {
  return _then(WordData(
null == word ? _self.word : word // ignore: cast_nullable_to_non_nullable
as WordEntity,
  ));
}


}

/// @nodoc


class WordError implements DefinitionWordState {
  const WordError(this.error);
  

 final  String error;

/// Create a copy of DefinitionWordState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WordErrorCopyWith<WordError> get copyWith => _$WordErrorCopyWithImpl<WordError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WordError&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString() {
  return 'DefinitionWordState.error(error: $error)';
}


}

/// @nodoc
abstract mixin class $WordErrorCopyWith<$Res> implements $DefinitionWordStateCopyWith<$Res> {
  factory $WordErrorCopyWith(WordError value, $Res Function(WordError) _then) = _$WordErrorCopyWithImpl;
@useResult
$Res call({
 String error
});




}
/// @nodoc
class _$WordErrorCopyWithImpl<$Res>
    implements $WordErrorCopyWith<$Res> {
  _$WordErrorCopyWithImpl(this._self, this._then);

  final WordError _self;
  final $Res Function(WordError) _then;

/// Create a copy of DefinitionWordState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(WordError(
null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$DefinitionSenseMediaState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DefinitionSenseMediaState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DefinitionSenseMediaState()';
}


}

/// @nodoc
class $DefinitionSenseMediaStateCopyWith<$Res> implements $DefinitionStateCopyWith<$Res> {
$DefinitionSenseMediaStateCopyWith(DefinitionSenseMediaState _, $Res Function(DefinitionSenseMediaState) __);
}


/// @nodoc


class SenseVideo implements DefinitionSenseMediaState {
  const SenseVideo(this.url);
  

 final  String url;

/// Create a copy of DefinitionSenseMediaState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SenseVideoCopyWith<SenseVideo> get copyWith => _$SenseVideoCopyWithImpl<SenseVideo>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SenseVideo&&(identical(other.url, url) || other.url == url));
}


@override
int get hashCode => Object.hash(runtimeType,url);

@override
String toString() {
  return 'DefinitionSenseMediaState.video(url: $url)';
}


}

/// @nodoc
abstract mixin class $SenseVideoCopyWith<$Res> implements $DefinitionSenseMediaStateCopyWith<$Res> {
  factory $SenseVideoCopyWith(SenseVideo value, $Res Function(SenseVideo) _then) = _$SenseVideoCopyWithImpl;
@useResult
$Res call({
 String url
});




}
/// @nodoc
class _$SenseVideoCopyWithImpl<$Res>
    implements $SenseVideoCopyWith<$Res> {
  _$SenseVideoCopyWithImpl(this._self, this._then);

  final SenseVideo _self;
  final $Res Function(SenseVideo) _then;

/// Create a copy of DefinitionSenseMediaState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? url = null,}) {
  return _then(SenseVideo(
null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class SenseImage implements DefinitionSenseMediaState {
  const SenseImage(this.url);
  

 final  String url;

/// Create a copy of DefinitionSenseMediaState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SenseImageCopyWith<SenseImage> get copyWith => _$SenseImageCopyWithImpl<SenseImage>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SenseImage&&(identical(other.url, url) || other.url == url));
}


@override
int get hashCode => Object.hash(runtimeType,url);

@override
String toString() {
  return 'DefinitionSenseMediaState.image(url: $url)';
}


}

/// @nodoc
abstract mixin class $SenseImageCopyWith<$Res> implements $DefinitionSenseMediaStateCopyWith<$Res> {
  factory $SenseImageCopyWith(SenseImage value, $Res Function(SenseImage) _then) = _$SenseImageCopyWithImpl;
@useResult
$Res call({
 String url
});




}
/// @nodoc
class _$SenseImageCopyWithImpl<$Res>
    implements $SenseImageCopyWith<$Res> {
  _$SenseImageCopyWithImpl(this._self, this._then);

  final SenseImage _self;
  final $Res Function(SenseImage) _then;

/// Create a copy of DefinitionSenseMediaState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? url = null,}) {
  return _then(SenseImage(
null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class Loading implements DefinitionSenseMediaState {
  const Loading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Loading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DefinitionSenseMediaState.loading()';
}


}




// dart format on
