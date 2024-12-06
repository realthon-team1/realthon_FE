// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'image_query_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ImageQueryResult _$ImageQueryResultFromJson(Map<String, dynamic> json) {
  return _ImageQueryResult.fromJson(json);
}

/// @nodoc
mixin _$ImageQueryResult {
  bool get fishing_avaliability => throw _privateConstructorUsedError;
  String get fish_name => throw _privateConstructorUsedError;
  String get fish_description => throw _privateConstructorUsedError;
  List<String> get fish_questions => throw _privateConstructorUsedError;
  String get db_id => throw _privateConstructorUsedError;

  /// Serializes this ImageQueryResult to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ImageQueryResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ImageQueryResultCopyWith<ImageQueryResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageQueryResultCopyWith<$Res> {
  factory $ImageQueryResultCopyWith(
          ImageQueryResult value, $Res Function(ImageQueryResult) then) =
      _$ImageQueryResultCopyWithImpl<$Res, ImageQueryResult>;
  @useResult
  $Res call(
      {bool fishing_avaliability,
      String fish_name,
      String fish_description,
      List<String> fish_questions,
      String db_id});
}

/// @nodoc
class _$ImageQueryResultCopyWithImpl<$Res, $Val extends ImageQueryResult>
    implements $ImageQueryResultCopyWith<$Res> {
  _$ImageQueryResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ImageQueryResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fishing_avaliability = null,
    Object? fish_name = null,
    Object? fish_description = null,
    Object? fish_questions = null,
    Object? db_id = null,
  }) {
    return _then(_value.copyWith(
      fishing_avaliability: null == fishing_avaliability
          ? _value.fishing_avaliability
          : fishing_avaliability // ignore: cast_nullable_to_non_nullable
              as bool,
      fish_name: null == fish_name
          ? _value.fish_name
          : fish_name // ignore: cast_nullable_to_non_nullable
              as String,
      fish_description: null == fish_description
          ? _value.fish_description
          : fish_description // ignore: cast_nullable_to_non_nullable
              as String,
      fish_questions: null == fish_questions
          ? _value.fish_questions
          : fish_questions // ignore: cast_nullable_to_non_nullable
              as List<String>,
      db_id: null == db_id
          ? _value.db_id
          : db_id // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ImageQueryResultImplCopyWith<$Res>
    implements $ImageQueryResultCopyWith<$Res> {
  factory _$$ImageQueryResultImplCopyWith(_$ImageQueryResultImpl value,
          $Res Function(_$ImageQueryResultImpl) then) =
      __$$ImageQueryResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool fishing_avaliability,
      String fish_name,
      String fish_description,
      List<String> fish_questions,
      String db_id});
}

/// @nodoc
class __$$ImageQueryResultImplCopyWithImpl<$Res>
    extends _$ImageQueryResultCopyWithImpl<$Res, _$ImageQueryResultImpl>
    implements _$$ImageQueryResultImplCopyWith<$Res> {
  __$$ImageQueryResultImplCopyWithImpl(_$ImageQueryResultImpl _value,
      $Res Function(_$ImageQueryResultImpl) _then)
      : super(_value, _then);

  /// Create a copy of ImageQueryResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fishing_avaliability = null,
    Object? fish_name = null,
    Object? fish_description = null,
    Object? fish_questions = null,
    Object? db_id = null,
  }) {
    return _then(_$ImageQueryResultImpl(
      fishing_avaliability: null == fishing_avaliability
          ? _value.fishing_avaliability
          : fishing_avaliability // ignore: cast_nullable_to_non_nullable
              as bool,
      fish_name: null == fish_name
          ? _value.fish_name
          : fish_name // ignore: cast_nullable_to_non_nullable
              as String,
      fish_description: null == fish_description
          ? _value.fish_description
          : fish_description // ignore: cast_nullable_to_non_nullable
              as String,
      fish_questions: null == fish_questions
          ? _value._fish_questions
          : fish_questions // ignore: cast_nullable_to_non_nullable
              as List<String>,
      db_id: null == db_id
          ? _value.db_id
          : db_id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ImageQueryResultImpl implements _ImageQueryResult {
  _$ImageQueryResultImpl(
      {required this.fishing_avaliability,
      required this.fish_name,
      required this.fish_description,
      required final List<String> fish_questions,
      required this.db_id})
      : _fish_questions = fish_questions;

  factory _$ImageQueryResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$ImageQueryResultImplFromJson(json);

  @override
  final bool fishing_avaliability;
  @override
  final String fish_name;
  @override
  final String fish_description;
  final List<String> _fish_questions;
  @override
  List<String> get fish_questions {
    if (_fish_questions is EqualUnmodifiableListView) return _fish_questions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_fish_questions);
  }

  @override
  final String db_id;

  @override
  String toString() {
    return 'ImageQueryResult(fishing_avaliability: $fishing_avaliability, fish_name: $fish_name, fish_description: $fish_description, fish_questions: $fish_questions, db_id: $db_id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImageQueryResultImpl &&
            (identical(other.fishing_avaliability, fishing_avaliability) ||
                other.fishing_avaliability == fishing_avaliability) &&
            (identical(other.fish_name, fish_name) ||
                other.fish_name == fish_name) &&
            (identical(other.fish_description, fish_description) ||
                other.fish_description == fish_description) &&
            const DeepCollectionEquality()
                .equals(other._fish_questions, _fish_questions) &&
            (identical(other.db_id, db_id) || other.db_id == db_id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      fishing_avaliability,
      fish_name,
      fish_description,
      const DeepCollectionEquality().hash(_fish_questions),
      db_id);

  /// Create a copy of ImageQueryResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ImageQueryResultImplCopyWith<_$ImageQueryResultImpl> get copyWith =>
      __$$ImageQueryResultImplCopyWithImpl<_$ImageQueryResultImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ImageQueryResultImplToJson(
      this,
    );
  }
}

abstract class _ImageQueryResult implements ImageQueryResult {
  factory _ImageQueryResult(
      {required final bool fishing_avaliability,
      required final String fish_name,
      required final String fish_description,
      required final List<String> fish_questions,
      required final String db_id}) = _$ImageQueryResultImpl;

  factory _ImageQueryResult.fromJson(Map<String, dynamic> json) =
      _$ImageQueryResultImpl.fromJson;

  @override
  bool get fishing_avaliability;
  @override
  String get fish_name;
  @override
  String get fish_description;
  @override
  List<String> get fish_questions;
  @override
  String get db_id;

  /// Create a copy of ImageQueryResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ImageQueryResultImplCopyWith<_$ImageQueryResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
